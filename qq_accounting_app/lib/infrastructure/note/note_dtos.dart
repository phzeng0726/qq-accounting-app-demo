import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/note/note.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
class NoteDto with _$NoteDto {
  const NoteDto._();

  const factory NoteDto({
    required int? id,
    required int accountId,
    required String accountTitle,
    required DateTime createdTime,
    required String amountType, // expense or income
    required DateTime dateTime, // 日期
    required int amount, // 金額
    required String itemName, // 項目名稱
    required String category, // 類別：餐費、...
    required String memo, // 備忘錄
    // required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _NoteDto;

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id,
      accountId: note.accountId,
      accountTitle: note.accountTitle,
      createdTime: note.createdTime,
      amountType: note.amountType, // expense or income
      dateTime: note.dateTime, // 日期
      amount: note.amount, // 金額
      itemName: note.itemName, // 項目名稱
      category: note.category, // 類別：餐費、...
      memo: note.memo,
    ); // 備忘錄
  }

  Note toDomain() {
    return Note(
      id: id,
      accountId: accountId,
      accountTitle: accountTitle,
      createdTime: createdTime,
      amountType: amountType, // expense or income
      dateTime: dateTime, // 日期
      amount: amount, // 金額
      itemName: itemName, // 項目名稱
      category: category, // 類別：餐費、...
      memo: memo,
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);
}
