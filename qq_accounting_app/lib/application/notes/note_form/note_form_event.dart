part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(Note initialNote, bool isEditing) =
      _Initialized;
  const factory NoteFormEvent.amountTypeChanged(String amountTypeStr) =
      _AmountTypeChanged;
  const factory NoteFormEvent.dateTimeChanged(DateTime dateTime) =
      _DateTimeChanged;
  const factory NoteFormEvent.tempAmountChanged(String amountStr) =
      _TempAmountChanged;
  const factory NoteFormEvent.amountSaved(String amountStr) = _AmountSaved;
  const factory NoteFormEvent.categoryChanged(String categoryStr) =
      _CategoryChanged; 
  const factory NoteFormEvent.itemNameChanged(String itemNameStr) =
      _ItemNameChanged; 
  const factory NoteFormEvent.memoChanged(String memoStr) = _MemoChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
// TODO account要額外用方便建立category和itemName的快捷功能