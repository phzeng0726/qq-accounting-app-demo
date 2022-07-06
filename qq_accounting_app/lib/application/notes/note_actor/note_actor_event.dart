part of 'note_actor_bloc.dart';

@freezed
abstract class NoteActorEvent with _$NoteActorEvent {
  const factory NoteActorEvent.deleted(int noteId) = _Deleted;
}