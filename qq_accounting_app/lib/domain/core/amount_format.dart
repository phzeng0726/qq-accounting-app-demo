import 'package:freezed_annotation/freezed_annotation.dart';
import "package:intl/intl.dart";

part 'amount_format.freezed.dart';

@freezed
class AmountFormat with _$AmountFormat {
  const AmountFormat._();

  const factory AmountFormat(int value) = _AmountFormat;

  factory AmountFormat.fromInt(int value) => AmountFormat(value);

  String toFormatString() => value.toString().length <= 3
      ? value.toString()
      : NumberFormat('0,000').format(value).toString();
}
