// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SongDTO _$$_SongDTOFromJson(Map<String, dynamic> json) => _$_SongDTO(
      id: json['id'] as int?,
      title: json['title'] as String,
      currencyType: json['currencyType'] as String,
      initialAmount: json['initialAmount'] as int,
    );

Map<String, dynamic> _$$_SongDTOToJson(_$_SongDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'currencyType': instance.currencyType,
      'initialAmount': instance.initialAmount,
    };
