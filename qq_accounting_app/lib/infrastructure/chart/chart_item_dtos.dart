import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/chart/chart_item.dart';

part 'chart_item_dtos.freezed.dart';
part 'chart_item_dtos.g.dart';

@freezed
class ChartItemDto with _$ChartItemDto {
  const ChartItemDto._();

  const factory ChartItemDto({
    required String category,
    required int amount,
    required num percentage,
  }) = _ChartItemDto;

  factory ChartItemDto.fromDomain(ChartItem chartItem) {
    return ChartItemDto(
      category: chartItem.category,
      amount: chartItem.amount,
      percentage: chartItem.percentage,
    ); // 備忘錄
  }

  ChartItem toDomain() {
    return ChartItem(
      category: category,
      amount: amount,
      percentage: percentage,
    );
  }

  factory ChartItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChartItemDtoFromJson(json);
}
