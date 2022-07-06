import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_failure.freezed.dart';

// @freezed
// abstract class NoteFailure with _$NoteFailure {
//   const factory NoteFailure.unexpected() = _Unexpected;
//   const factory NoteFailure.insufficientPermission() = _InsufficientPermission;
//   const factory NoteFailure.unableToUpdate() = _UnableToUpdate;
// }

@freezed
class NoteFailure with _$NoteFailure {
  const NoteFailure._();
  const factory NoteFailure.api(String? errorMessage) = _Api;
}