import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note_failure.dart';

part 'note_actor_cubit.freezed.dart';
part 'note_actor_state.dart';

class NoteActorCubit extends Cubit<NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorCubit(
    this._noteRepository,
  ) : super(const NoteActorState.initial());

  // TODO either
  void deleted(int noteId) async {
    emit(const NoteActorState.actionInProgress());
    await _noteRepository.delete(noteId);
    emit(const NoteActorState.deleteSuccess());
    // yield possibleFailure.fold(
    //   (f) => NoteActorState.deleteFailure(f),
    //   (_) => const NoteActorState.deleteSuccess(),
    // );
  }

  @override
  Future<void> close() async {
    return super.close();
  }

}
