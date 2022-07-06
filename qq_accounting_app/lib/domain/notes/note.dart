// 日期、項目、金額、幣別（預設台幣）、類別、備註
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

// FIXME: 有可能一個帳戶裡面有兩種幣值的貨幣，但目前先假設accountId裡面只有一種幣別，否則太複雜
@freezed
abstract class Note implements _$Note {
  const Note._();
  const factory Note({
    int? id, // NOTE: 為了讓sqflite系統可以自動產生unique key，
    required int accountId,
    required String accountTitle,
    required DateTime createdTime,
    required String amountType, // expense or income
    required DateTime dateTime, // 日期
    required int amount, // 金額
    required String itemName, // 項目名稱
    required String category, // 類別：餐費、...
    required String memo, // 備忘錄
  }) = _Note;

  factory Note.empty() => Note(
        id: null,
        accountId: 0,
        accountTitle: '',
        createdTime: DateTime.now(),
        amountType: 'expense', // expense or income
        dateTime: DateTime.now(),
        amount: 0,
        itemName: '',
        category: '尚未選擇',
        memo: '',
      );

  factory Note.testIncomeModel() => Note(
        id: null,
        accountId: 0,
        accountTitle: '',
        createdTime: DateTime.now(),
        amountType: 'income', // expense or income
        dateTime: DateTime.now(),
        amount: 10000,
        itemName: '薪水',
        category: '正職薪水',
        memo: '6月份薪資',
      );

  factory Note.testExpenseModel() => Note(
        id: null,
        accountId: 0,
        accountTitle: '',
        createdTime: DateTime.now(),
        amountType: 'expense', // expense or income
        dateTime: DateTime.now(),
        amount: 50,
        itemName: '飲料',
        category: '飲食費',
        memo: '仙草奶凍',
      );
}
