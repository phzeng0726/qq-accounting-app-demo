import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/account/account.dart';
import '../../../domain/account/i_account_repository.dart';
import '../../../domain/core/load_status.dart';
import '../../../domain/note/i_note_repository.dart';

part 'account_watcher_cubit.freezed.dart';
part 'account_watcher_state.dart';

class AccountWatcherCubit extends Cubit<AccountWatcherState> {
  final IAccountRepository _accountRepository;
  final INoteRepository _noteRepository;

  AccountWatcherCubit(
    this._accountRepository,
    this._noteRepository,
  ) : super(AccountWatcherState.initial());

  Future<void> fetchAccounts() async {
    emit(
      state.copyWith(
        status: const LoadStatus.inProgress(),
      ),
    );

    var failureOrSuccess = await _accountRepository.fetchAllAccounts();

    return failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          status: const LoadStatus.failed(),
        ),
      ),
      (accountList) => fetchAccountsNetAmount(
        accountList,
      ),
    );
  }

  Future<void> fetchAccountsNetAmount(List<Account> accountList) async {
    List<int> netAmountList = <int>[];
    int totalBalance = 0;

    for (var account in accountList) {
      final int netAmount = await _noteRepository.computeNetAmount(account.id!);
      totalBalance += netAmount + account.initialAmount;
      netAmountList.add(netAmount);
    }

    emit(
      state.copyWith(
        status: const LoadStatus.succeed(),
        accounts: accountList,
        netAmountList: netAmountList,
        totalBalance: totalBalance,
      ),
    );
  }

  Future<void> selectedAccount(Account account) async {
    emit(
      state.copyWith(selectedAccountOption: some(account)),
    );
  }
}
