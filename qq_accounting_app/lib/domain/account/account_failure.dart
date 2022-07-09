import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_failure.freezed.dart';

@freezed
class AccountFailure with _$AccountFailure {
  const AccountFailure._();
  const factory AccountFailure.api(String? errorMessage) = _Api;
}