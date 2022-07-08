part of 'account_watcher_cubit.dart';

@freezed
class AccountWatcherState with _$AccountWatcherState {
  const AccountWatcherState._();
  const factory AccountWatcherState({
    required Option<Account> selectedAccountOption,
    required LoadStatus status,
    @Default([]) List<Account> accounts,
    @Default([]) List<int> netAmountList,
  }) = _AccountWatcherState;

  factory AccountWatcherState.initial() => AccountWatcherState(
        selectedAccountOption: none(),
        status: const LoadStatus.initial(),
        accounts: <Account>[],
        netAmountList: <int>[],
      );
}
