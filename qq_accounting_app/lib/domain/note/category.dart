// 日期、項目、金額、幣別（預設台幣）、類別、備註
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class Category implements _$Category {
  const Category._();
  const factory Category({
    int? id, // CATEGORY: 為了讓sqflite系統可以自動產生unique key，
    required int accountId,
    required String amountType, // expense or income
    required String title, // 類別：餐費、...
  }) = _Category;

  factory Category.empty() => const Category(
        id: null,
        accountId: 0,
        amountType: 'expense', // expense or income
        title: '尚未選擇',
      );

  factory Category.testIncomeModel() => const Category(
        id: null,
        accountId: 0,
        amountType: 'income', // expense or income
        title: '正職薪水',
      );

  factory Category.testExpenseModel() => const Category(
        id: null,
        accountId: 0,
        amountType: 'expense', // expense or income
        title: '飲食費',
      );
}
