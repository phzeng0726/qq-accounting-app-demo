part of 'note_form_bloc.dart';

// Each Widget is located at an index which is unique
int randomNumber = 0;
List<Note> _testNotes = [
  Note.testIncomeModel(),
  Note.testIncomeModel().copyWith(
    itemName: '獎學金',
    category: '其他收入',
    amount: 2000,
  ),
  Note.testExpenseModel(),
  Note.testExpenseModel().copyWith(
    itemName: '公車',
    category: '交通費',
    amount: 20,
  ),
  Note.testExpenseModel().copyWith(
    itemName: '水管',
    category: '水電費',
  ),
];
Note get _testNote => (_testNotes..shuffle()).first;

// TODO: 到時候需要添加Option 確認是否有error
@freezed
abstract class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required String tempAmount, // 計算機暫存的金額字串，用Int比較麻煩所以用String
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    // required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        note: _testNote,
        tempAmount: '',
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        // saveFailureOrSuccessOption: none(),
      );
}
