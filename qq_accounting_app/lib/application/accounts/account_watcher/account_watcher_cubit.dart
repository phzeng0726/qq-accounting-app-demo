import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/accounts/account.dart';
import '../../../domain/core/load_status.dart';
import '../../../infrastructure/accounts/account_repository.dart';

part 'account_watcher_cubit.freezed.dart';
part 'account_watcher_state.dart';

class AccountWatcherCubit extends Cubit<AccountWatcherState> {
  final AccountRepository _accountRepository;

  AccountWatcherCubit(this._accountRepository)
      : super(AccountWatcherState.initial());

  Future<void> fetchAccounts() async {
    // NOTE: emit 可以透過套件改成yield state.copyWith()
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
      (accountList) => emit(
        state.copyWith(
          status: const LoadStatus.succeed(),
          accounts: accountList,
        ),
      ),
    );
  }
}
