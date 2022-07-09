import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/account/account.dart';

part 'account_dtos.freezed.dart';
part 'account_dtos.g.dart';

@freezed
class AccountDto with _$AccountDto {
  const AccountDto._();
  const factory AccountDto({
    int? id,
    required String title, // 標題（台幣帳戶 之類的）
    required String currencyType, // 幣別
    required int initialAmount, // 初始總資產金額
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
  
  Account toDomain() => Account(
        id: id,
        title: title,
        currencyType: currencyType,
        initialAmount: initialAmount,
      );

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);
}
