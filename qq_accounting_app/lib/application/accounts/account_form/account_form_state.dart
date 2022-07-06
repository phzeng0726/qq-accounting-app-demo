part of 'account_form_cubit.dart';

@freezed
class AccountFormState with _$AccountFormState {
  const AccountFormState._();
  const factory AccountFormState({
    required Account account,
    required String tempAmount,
    required AccountFormStatus status,
    required Option<AccountFailure> failureOption,
  }) = _AccountFormState;

  factory AccountFormState.initial() => AccountFormState(
        account: Account.empty(),
        tempAmount: '',
        status: const AccountFormStatus.initial(),
        failureOption: none(),
      );

  bool get isEditing => status == const AccountFormStatus.editing();
}

@freezed
class AccountFormStatus with _$AccountFormStatus {
  const factory AccountFormStatus.initial() = _Initial;
  const factory AccountFormStatus.editing() = _Editing;
  const factory AccountFormStatus.saving() = _Saving;
  const factory AccountFormStatus.completed() = _Completed;
  const factory AccountFormStatus.failure() = _Failure;
}
