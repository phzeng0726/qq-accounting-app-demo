// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note.dart';

part 'note_form_cubit.freezed.dart';
part 'note_form_state.dart';

class NoteFormCubit extends Cubit<NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormCubit(
    this._noteRepository,
  ) : super(NoteFormState.initial());

  void initialized(
    Note initialNote,
    bool isEditing,
  ) {
    emit(state.copyWith(
      note: initialNote,
      tempAmount: initialNote.amount.toString(),
      isEditing: isEditing,
    ));
  }

  void amountTypeChanged(String amountType) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        amountType: amountType,
        category: "尚未選擇", // 初始化類別
      ),
    ));
  }

  void dateTimeChanged(DateTime dateTime) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        dateTime: dateTime,
      ),
    ));
  }

  void tempAmountChanged(String amount) async {
    emit(state.copyWith(
      tempAmount: amount,
    ));
  }

  void amountSaved(String amount) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        amount: int.parse(amount),
      ),
    ));
  }

  void categoryChanged(String category) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        category: category,
      ),
    ));
  }

  void itemNameChanged(String itemName) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        itemName: itemName,
      ),
    ));
  }

  void memoChanged(String memo) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        memo: memo,
      ),
    ));
  }

  void saved() async {
    emit(
      state.copyWith(
        isSaving: true,
      ),
    );
    state.isEditing
        ? await _noteRepository.update(state.note)
        : await _noteRepository.create(state.note);

    emit(
      state.copyWith(
        isSaving: false,
      ),
    );
  }

  @override
  Future<void> close() async {
    // await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
