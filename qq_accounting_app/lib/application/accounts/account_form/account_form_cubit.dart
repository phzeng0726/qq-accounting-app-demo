import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:qq_accounting_app/domain/accounts/i_account_repository.dart';

part 'account_form_state.dart';
part 'account_form_cubit.freezed.dart';

class AccountFormCubit extends Cubit<AccountFormState> {
  final IAccountRepository _accountRepository;

  AccountFormCubit(this._accountRepository) : super(AccountFormState.initial());

  void creatingAccount() {
    // NOTE: 創新的NOTE
    emit(
      state.copyWith(
        account: Account.empty(),
        status: const AccountFormStatus.initial(),
      ),
    );
  }

  void editingAccount(Account initialAccount) {
    // NOTE: 舊的NOTE下去編輯
    emit(
      state.copyWith(
        account: initialAccount,
        status: const AccountFormStatus.editing(),
      ),
    );
  }

  void titleChanged(String titleStr) {
    emit(
      state.copyWith(
        account: state.account.copyWith(
          title: titleStr,
        ),
      ),
    );
  }

  void currencyTypeChanged(String currencyTypeStr) {
    emit(
      state.copyWith(
        account: state.account.copyWith(
          currencyType: currencyTypeStr,
        ),
      ),
    );
  }

  void tempAmountChanged(String amountStr) {
    emit(
      state.copyWith(
        tempAmount: amountStr,
      ),
    );
  }

  void initialAmountSaved(String initialAmountStr) {
    emit(
      state.copyWith(
        account: state.account.copyWith(
          initialAmount: int.parse(initialAmountStr),
        ),
      ),
    );
  }

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
}
