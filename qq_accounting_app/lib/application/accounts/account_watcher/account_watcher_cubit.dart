import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:qq_accounting_app/infrastructure/accounts/account_repository.dart';

part 'account_watcher_state.dart';
part 'account_watcher_cubit.freezed.dart';

class AccountWatcherCubit extends Cubit<AccountWatcherState> {
  final AccountRepository _accountRepository;

  AccountWatcherCubit(this._accountRepository)
      : super(AccountWatcherState.initial());

  Future<void> fetchAccountList() async {

    emit(
      state.copyWith(
        status: const LoadStatus.loading(),
      ),
    );

    var failureOrSuccess = await _accountRepository.fetchAllAccounts();

    return failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          status: const LoadStatus.failure(),
        ),
      ),
      (accountList) => emit(
        state.copyWith(
          status: const LoadStatus.success(),
          accountList: accountList,
        ),
      ),
    );
  }
}
