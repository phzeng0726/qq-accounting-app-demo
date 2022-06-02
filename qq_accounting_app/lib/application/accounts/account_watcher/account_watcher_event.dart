part of 'account_watcher_bloc.dart';

@freezed
abstract class AccountWatcherEvent with _$AccountWatcherEvent {
  const factory AccountWatcherEvent.getAllStarted() = _GetAllStarted;
  // const factory AccountWatcherEvent.getTotalAmountStarted() = _GetTotalAmount;

  // const factory AccountWatcherEvent.updateTotalAmount() =
  //     _UpdateTotalAmount;
  // const factory AccountWatcherEvent.getSingleDayStarted(DateTime dateTime) =
  //     _GetSingleDayStarted;
  // const factory AccountWatcherEvent.getDuringDayStarted(
  //   DateTime startTime,
  //   DateTime endTime,
  // ) = _GetDuringDayStarted;
  // factory AccountWatcherEvent.dateTimeChanged(DateTime dateTime) =
  //     _DateTimeChanged;
  // const factory AccountWatcherEvent.totalAmountReceived(
  //   int totalAmount,
  // ) = _TotalAmountReceived;
  const factory AccountWatcherEvent.accountsReceived(
    List<Account> accounts,
  ) = _AccountsReceived;
}
