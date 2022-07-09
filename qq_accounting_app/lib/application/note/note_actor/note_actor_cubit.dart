import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/note/i_note_repository.dart';
import '../../../domain/note/note_failure.dart';

part 'note_actor_cubit.freezed.dart';
part 'note_actor_state.dart';

class NoteActorCubit extends Cubit<NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorCubit(
    this._noteRepository,
  ) : super(const NoteActorState.initial());

  void deleted(int noteId) async {
    Option<NoteFailure> failureOption;
    emit(const NoteActorState.actionInProgress());
    failureOption = await _noteRepository.delete(noteId);

    failureOption.fold(
      () => emit(
        const NoteActorState.deleteSuccess(),
      ),
      (f) => emit(
        NoteActorState.deleteFailure(f),
      ),
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
