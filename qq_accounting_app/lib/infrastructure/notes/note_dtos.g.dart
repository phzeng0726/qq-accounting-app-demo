// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDto _$$_NoteDtoFromJson(Map<String, dynamic> json) => _$_NoteDto(
      id: json['id'] as int?,
      accountId: json['accountId'] as int,
      accountTitle: json['accountTitle'] as String,
      createdTime: DateTime.parse(json['createdTime'] as String),
      amountType: json['amountType'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      amount: json['amount'] as int,
      itemName: json['itemName'] as String,
      category: json['category'] as String,
      memo: json['memo'] as String,
    );

Map<String, dynamic> _$$_NoteDtoToJson(_$_NoteDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'accountTitle': instance.accountTitle,
      'createdTime': instance.createdTime.toIso8601String(),
      'amountType': instance.amountType,
      'dateTime': instance.dateTime.toIso8601String(),
      'amount': instance.amount,
      'itemName': instance.itemName,
      'category': instance.category,
      'memo': instance.memo,
    };
