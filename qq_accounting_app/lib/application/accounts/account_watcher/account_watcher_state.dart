part of 'account_watcher_cubit.dart';

@freezed
class AccountWatcherState with _$AccountWatcherState {
  // const factory AccountWatcherState.initial() = _Initial;

  const AccountWatcherState._();
  const factory AccountWatcherState({
    required LoadStatus status,
    @Default([]) List<Account> accountList,
  }) = _AccountWatcherState;

  factory AccountWatcherState.initial() =>  AccountWatcherState(
        status: LoadStatus.initial(),
        accountList: <Account>[
        ],
      );
}

@freezed
class LoadStatus with _$LoadStatus {
  const factory LoadStatus.initial() = _Initial;
  const factory LoadStatus.loading() = _Loading;
  const factory LoadStatus.success() = _Success;
  const factory LoadStatus.failure() = _Failure;
}
