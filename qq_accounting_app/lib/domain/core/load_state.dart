import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_state.freezed.dart';
part 'load_state.g.dart';

@freezed
class LoadState with _$LoadState {
  const factory LoadState.initial() = _LoadInitial;
  const factory LoadState.inProgress() = _LoadInProgress;
  const factory LoadState.failure() = _LoadFailure;
  const factory LoadState.success() = _LoadSuccess;

  factory LoadState.fromJson(Map<String, dynamic> json) =>
      _$LoadStateFromJson(json);
}