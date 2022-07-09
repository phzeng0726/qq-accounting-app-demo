part of 'account_watcher_cubit.dart';

@freezed
class AccountWatcherState with _$AccountWatcherState {
  const AccountWatcherState._();
  const factory AccountWatcherState({
    required Option<Account> selectedAccountOption,
    required LoadStatus status,
    required List<Account> accounts,
    required List<int> netAmountList,
  }) = _AccountWatcherState;

  factory AccountWatcherState.initial() => AccountWatcherState(
        selectedAccountOption: none(),
        status: const LoadStatus.initial(),
        accounts: <Account>[],
        netAmountList: <int>[],
      );
}
