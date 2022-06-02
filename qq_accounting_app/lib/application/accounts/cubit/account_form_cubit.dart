import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:qq_accounting_app/domain/accounts/i_account_repository.dart';

part 'account_form_state.dart';
part 'account_form_cubit.freezed.dart';

class AccountFormCubit extends Cubit<AccountFormState> {
  final IAccountRepository _accountRepository;

  AccountFormCubit(this._accountRepository) : super(AccountFormState.initial());

  void initialized(Account initialAccount, AccountFormStatus status) {
    emit(
      state.copyWith(
        account: initialAccount,
        status:
            status, // const AccountFormStatus.editing() or const AccountFormStatus.initial()
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
    // emit(state.copyWith(
    //   status: const AccountFormStatus.saving(),
    // ));

    // if (state.status == const AccountFormStatus.editing()) {
    //   await _accountRepository.update(state.account);
    // } else {
    //   await _accountRepository.create(state.account);
    // }
    await _accountRepository.create(state.account);
    print(state.account);
    emit(
      state.copyWith(
        status: const AccountFormStatus.completed(),
      ),
    );
  }
}
