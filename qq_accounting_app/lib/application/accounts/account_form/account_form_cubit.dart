import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/accounts/account.dart';
import '../../../domain/accounts/account_failure.dart';
import '../../../domain/accounts/i_account_repository.dart';

part 'account_form_cubit.freezed.dart';
part 'account_form_state.dart';

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

  Future<void> deleteAccount(Account initialAccount) async {
    Option<AccountFailure> failureOption;
    emit(
      state.copyWith(
        status: const AccountFormStatus.saving(),
      ),
    );
    failureOption = await _accountRepository.delete(initialAccount.id);
    failureOption.fold(
      () => emit(
        state.copyWith(
          failureOption: none(),
          status: const AccountFormStatus.completed(),
        ),
      ),
      (f) => emit(
        state.copyWith(
          failureOption: some(f),
          status: const AccountFormStatus.failure(),
        ),
      ),
    );
  }

  Future<void> saved() async {
    // NOTE: 依據編輯狀態之類的決定是否該新增
    Option<AccountFailure> failureOption;

    emit(state.copyWith(status: const AccountFormStatus.saving()));

    failureOption = state.isEditing
        ? await _accountRepository.update(state.account)
        : await _accountRepository.create(state.account);

    failureOption.fold(
      () => emit(
        state.copyWith(
          failureOption: none(),
          status: const AccountFormStatus.completed(),
        ),
      ),
      (f) => emit(
        state.copyWith(
          failureOption: some(f),
          status: const AccountFormStatus.failure(),
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
