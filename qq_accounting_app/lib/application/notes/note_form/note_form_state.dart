part of 'note_form_cubit.dart';

// TODO: 到時候需要添加Option 確認是否有error
@freezed
abstract class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required String tempAmount, // 計算機暫存的金額字串，用Int比較麻煩所以用String
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required bool isValidating,
    required Option<NoteFailure> failureOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        note: testNote,
        tempAmount: '',
        showErrorMessages: false,
        isValidating: false,
        isEditing: false,
        isSaving: false,
        failureOption: none(),
      );
}
