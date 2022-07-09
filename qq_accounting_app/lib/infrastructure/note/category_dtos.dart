import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/note/category.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  const factory CategoryDto({
    required int? id,
    required int accountId,
    required String amountType, // expense or income
    required String title, // 類別：餐費、...
  }) = _CategoryDto;

  factory CategoryDto.fromDomain(Category category) {
    return CategoryDto(
      id: category.id,
      accountId: category.accountId,
      amountType: category.amountType, // expense or income
      title: category.title, // 類別：餐費、...
    ); // 備忘錄
  }

  Category toDomain() {
    return Category(
      id: id,
      accountId: accountId,
      amountType: amountType, // expense or income
      title: title, // 類別：餐費、...
    );
  }

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}
