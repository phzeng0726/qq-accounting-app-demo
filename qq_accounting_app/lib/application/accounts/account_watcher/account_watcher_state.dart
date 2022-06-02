part of 'account_watcher_cubit.dart';

@freezed
class AccountWatcherState with _$AccountWatcherState {
  const AccountWatcherState._();
  const factory AccountWatcherState({
    required LoadStatus status,
    @Default([]) List<Account> accounts,
  }) = _AccountWatcherState;

  factory AccountWatcherState.initial() => const AccountWatcherState(
        status: LoadStatus.initial(),
        accounts: <Account>[],
      );
}

@freezed
class LoadStatus with _$LoadStatus {
  const factory LoadStatus.initial() = _Initial;
  const factory LoadStatus.loading() = _Loading;
  const factory LoadStatus.success() = _Success;
  const factory LoadStatus.failure() = _Failure;
}
