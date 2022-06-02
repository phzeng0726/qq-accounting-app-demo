part of 'account_form_bloc.dart';
// // Each Widget is located at an index which is unique
// int randomNumber = 0;
// List<Note> _testNotes = [
//   Note.testIncomeModel(),
//   Note.testIncomeModel().copyWith(
//     itemName: '獎學金',
//     category: '其他收入',
//     amount: 2000,
//   ),
//   Note.testExpenseModel(),
//   Note.testExpenseModel().copyWith(
//     itemName: '公車',
//     category: '交通費',
//     amount: 20,
//   ),
//   Note.testExpenseModel().copyWith(
//     itemName: '水管',
//     category: '水電費',
//   ),
// ];
// Note get _testNote => (_testNotes..shuffle()).first;

@freezed
abstract class AccountFormState with _$AccountFormState {
  const factory AccountFormState({
    required Account account,
    required String tempAmount,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    // required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _AccountFormState;

  factory AccountFormState.initial() => AccountFormState(
        account: Account.empty(),
        tempAmount: '',
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        // saveFailureOrSuccessOption: none(),
      );
}
