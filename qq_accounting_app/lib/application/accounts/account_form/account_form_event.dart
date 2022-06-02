part of 'account_form_bloc.dart';

@freezed
abstract class AccountFormEvent with _$AccountFormEvent {
  const factory AccountFormEvent.initialized(
      Account initialAccount, bool isEditing) = _Initialized;
  const factory AccountFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory AccountFormEvent.currencyTypeChanged(String currencyTypeStr) =
      _CurrencyTypeChanged;
  const factory AccountFormEvent.tempAmountChanged(String amountStr) =
      _TempAmountChanged;
  const factory AccountFormEvent.initialAmountSaved(String initialAmountStr) =
      _InitialAmountChanged;

  const factory AccountFormEvent.saved() = _Saved;
}
// TODO account要額外用方便建立category和itemName的快捷功能