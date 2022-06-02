import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/notes/account.dart';

part 'account_dtos.freezed.dart';
part 'account_dtos.g.dart';

@freezed
class AccountDto with _$AccountDto {
  const AccountDto._();

  const factory AccountDto({
    required int? id, // sqflite會自動產生id
    required String title, // 標題（台幣帳戶 之類的）
    required String currencyType, // 幣別
    required int initialAmount, // 初始總資產金額
    // required int totalIncomeAmount, // 後續
    // required int totalExpenseAmount,
  }) = _AccountDto;

  factory AccountDto.fromDomain(Account account) {
    return AccountDto(
      id: account.id,
      title: account.title, 
      currencyType: account.currencyType, 
      initialAmount: account.initialAmount, 
      // totalIncomeAmount: account.totalIncomeAmount,
      // totalExpenseAmount: account.totalExpenseAmount,
    );
  }

  Account toDomain() {
    return Account(
      id: id,
      title: title,
      currencyType: currencyType, 
      initialAmount: initialAmount, 
      // totalIncomeAmount: totalIncomeAmount,
      // totalExpenseAmount: totalExpenseAmount,
    );
  }

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);
}
