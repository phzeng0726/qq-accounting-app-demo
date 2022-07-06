import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_failure.freezed.dart';

@freezed
class ChartFailure with _$ChartFailure {
  const ChartFailure._();
  const factory ChartFailure.api(String? errorMessage) = _Api;
}