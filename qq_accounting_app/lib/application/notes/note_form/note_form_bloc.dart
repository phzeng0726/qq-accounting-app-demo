import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note.dart';

part 'note_form_bloc.freezed.dart';
part 'note_form_event.dart';
part 'note_form_state.dart';

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
            note: e.initialNote,
            tempAmount: e.initialNote.amount.toString(),
            isEditing: e.isEditing,
          );
      },
      amountTypeChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            amountType: e.amountTypeStr,
            category: "尚未選擇", // 初始化類別
          ),
        );
      },
      dateTimeChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            dateTime: e.dateTime,
          ),
        );
      },
      tempAmountChanged: (e) async* {
        yield state.copyWith(
          tempAmount: e.amountStr,
        );
      },
      amountSaved: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            amount: int.parse('${e.amountStr}'),
          ),
        );
      },
      categoryChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            category: e.categoryStr,
          ),
        );
      },
      itemNameChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            itemName: e.itemNameStr,
          ),
        );
      },
      memoChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            memo: e.memoStr,
          ),
        );
      },
      saved: (e) async* {
        yield state.copyWith(isSaving: true);
        if (state.isEditing) {
          await _noteRepository.update(state.note);
        } else {
          await _noteRepository.create(state.note);
        }
        yield state.copyWith(isSaving: false);
      },
    );
    print(state);
  }

  @override
  Future<void> close() {
    // _userListSubscription?.cancel();

    return super.close();
  }
}
