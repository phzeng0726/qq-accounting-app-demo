import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/notes/i_account_repository.dart';

import '../../../domain/notes/account.dart';
import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note.dart';

part 'account_form_bloc.freezed.dart';
part 'account_form_event.dart';
part 'account_form_state.dart';

class AccountFormBloc extends Bloc<AccountFormEvent, AccountFormState> {
  final IAccountRepository _accountRepository;

  AccountFormBloc(this._accountRepository) : super(AccountFormState.initial());

  @override
  Stream<AccountFormState> mapEventToState(
    AccountFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
            account: e.initialAccount,
            isEditing: e.isEditing,
          );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          account: state.account.copyWith(
            title: e.titleStr,
          ),
        );
      },
      currencyTypeChanged: (e) async* {
        yield state.copyWith(
          account: state.account.copyWith(
            currencyType: e.currencyTypeStr,
          ),
        );
      },
      tempAmountChanged: (e) async* {
        yield state.copyWith(
          tempAmount: e.amountStr,
        );
      },
      initialAmountSaved: (e) async* {
        yield state.copyWith(
          account: state.account.copyWith(
            initialAmount: int.parse('${e.initialAmountStr}'),
          ),
        );
      },
      saved: (e) async* {
        yield state.copyWith(isSaving: true);
        if (state.isEditing) {
          await _accountRepository.update(state.account);
        } else {
          await _accountRepository.create(state.account);
        }
        yield state.copyWith(isSaving: false);
      },
    );
    print(state);
  }

  @override
  Future<void> close() {
    // _userListSubscription?.cancel();

    return super.close();
  }
}
