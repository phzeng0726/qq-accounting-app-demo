import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:qq_accounting_app/domain/accounts/i_account_repository.dart';

part 'account_form_state.dart';
part 'account_form_cubit.freezed.dart';

class AccountFormCubit extends Cubit<AccountFormState> {
  final IAccountRepository _accountRepository;

  AccountFormCubit(this._accountRepository) : super(AccountFormState.initial());

  void initAccount({
    required Account initialAccount,
    required bool isEditing,
  }) {
    if (isEditing) {
      emit(
        state.copyWith(
          account: initialAccount,
          status: const AccountFormStatus.editing(),
        ),
      );
    } else {
      emit(
        state.copyWith(
          account: initialAccount, // Account.empty(),
          status: const AccountFormStatus.initial(),
        ),
      );
    }
  }

  void titleChanged(String title) {
    emit(
      state.copyWith(
        account: state.account.copyWith(
          title: title,
        ),
      ),
    );
  }

  void currencyTypeChanged(String currencyType) {
    emit(
      state.copyWith(
        account: state.account.copyWith(
          currencyType: currencyType,
        ),
      ),
    );
  }

  void tempAmountChanged(String amount) {
    emit(
      state.copyWith(
        tempAmount: amount,
      ),
    );
  }

  void initialAmountSaved(String initialAmount) {
    emit(
      state.copyWith(
        account: state.account.copyWith(
          initialAmount: int.parse(initialAmount),
        ),
      ),
    );
  }

  // TODO 改either
  Future<void> deleteAccount(Account initialAccount) async {
    try {
      emit(
        state.copyWith(
          status: const AccountFormStatus.saving(),
        ),
      );
      await _accountRepository.delete(initialAccount.id);
      emit(
        state.copyWith(
          status: const AccountFormStatus.completed(),
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: const AccountFormStatus.failure(),
        ),
      );
    }
  }

  // TODO 改either
  Future<void> saved() async {
    // NOTE: 依據編輯狀態之類的決定是否該新增
    try {
      if (state.isEditing) {
        emit(state.copyWith(status: const AccountFormStatus.saving()));
        await _accountRepository.update(state.account);
      } else {
        emit(state.copyWith(status: const AccountFormStatus.saving()));
        await _accountRepository.create(state.account);
      }

      emit(
        state.copyWith(status: const AccountFormStatus.completed()),
      );
    } catch (_) {
      emit(
        state.copyWith(status: const AccountFormStatus.failure()),
      );
    }
    return;
  }

  @override
  Future<void> close() {
    // _userListSubscription?.cancel();

    return super.close();
  }
}
