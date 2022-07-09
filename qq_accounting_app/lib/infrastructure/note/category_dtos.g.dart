// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDto _$$_CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoryDto(
      id: json['id'] as int?,
      accountId: json['accountId'] as int,
      amountType: json['amountType'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'amountType': instance.amountType,
      'title': instance.title,
    };
