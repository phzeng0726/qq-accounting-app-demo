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