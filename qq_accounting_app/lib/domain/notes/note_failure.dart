import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_failure.freezed.dart';



@freezed
class NoteFailure with _$NoteFailure {
  const NoteFailure._();
  const factory NoteFailure.amountMustGreaterThan0() = _AmountMustGreaterThan0;
  const factory NoteFailure.insufficientBalance() = _InsufficientBalance;
  const factory NoteFailure.unexpected() = _Unexpected;
}
