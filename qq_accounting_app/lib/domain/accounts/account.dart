import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const Account._();
  const factory Account({
    int? id,
    required String title, // 標題（台幣帳戶 之類的）
    required String currencyType, // 幣別
    required int initialAmount, // 初始總資產金額
    // int? netAmount,
  }) = _Account;

  factory Account.empty() => const Account(
        id: null,
        title: '未命名帳戶',
        currencyType: '新台幣',
        initialAmount: 0,
        // netAmount: null,
        // totalIncomeAmount: 0,
        // totalExpenseAmount: 0,
      );

  factory Account.test() => const Account(
        id: 10,
        title: 'cc',
        currencyType: '新台幣',
        initialAmount: 0,
        // netAmount: null,
        // totalIncomeAmount: 0,
        // totalExpenseAmount: 0,
      );
}
