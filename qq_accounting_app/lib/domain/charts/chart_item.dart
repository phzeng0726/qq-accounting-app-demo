import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_item.freezed.dart';

// NOTE: 用來顯示圖表用的
@freezed
abstract class ChartItem implements _$ChartItem {
  const ChartItem._();
  const factory ChartItem({
    required String category,
    required int amount, // 金額
    required num percentage, //TODO
  }) = _ChartItem;

  factory ChartItem.empty() =>
      ChartItem(category: '', amount: 0, percentage: 0);

  // Option<ValueFailure<dynamic>> get failureOption {
  //   return (this.id.failureOrUnit)
  //       .andThen(questionBody.failureOrUnit)
  //       .fold((f) => some(f), (_) => none());
  // }
}
