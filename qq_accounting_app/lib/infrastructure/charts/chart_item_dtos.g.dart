// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_item_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChartItemDto _$$_ChartItemDtoFromJson(Map<String, dynamic> json) =>
    _$_ChartItemDto(
      category: json['category'] as String,
      amount: json['amount'] as int,
      percentage: json['percentage'] as num,
    );

Map<String, dynamic> _$$_ChartItemDtoToJson(_$_ChartItemDto instance) =>
    <String, dynamic>{
      'category': instance.category,
      'amount': instance.amount,
      'percentage': instance.percentage,
    };
