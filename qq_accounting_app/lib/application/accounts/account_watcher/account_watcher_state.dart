part of 'account_watcher_bloc.dart';

@freezed
abstract class AccountWatcherState with _$AccountWatcherState {
  const factory AccountWatcherState({
    required LoadState loadState,
    required List<Account> accounts,
    // required int dailyIncomeAmount,
    // required int dailyExpenseAmount,
    // required int dailyNetAmount,
    // required Account account,
  }) = _AccountWatcherState;

  factory AccountWatcherState.initial() => AccountWatcherState(
        loadState: const LoadState.initial(),
        accounts: <Account>[],
        // dailyIncomeAmount:0,
        // dailyExpenseAmount:0,
        // dailyNetAmount:0,
        // account: Account.empty(),
        // noteList: <Note>[Note.testExpenseModel(), Note.testIncomeModel()],
        // dailyIncomeAmount: 100,
        // dailyExpenseAmount: 90,
        // dailyNetAmount: 10,
        // incomeCategoryList: <String>['薪水', '零用錢', '還款', '其他'],
        // expenseCategoryList: <String>[
        //   '飲食費',
        //   '交通費',
        //   '日用品',
        //   '通訊費',
        //   '房租',
        //   '其他',
        // ] // TODO 要可以移動順序的功能
      );
}
