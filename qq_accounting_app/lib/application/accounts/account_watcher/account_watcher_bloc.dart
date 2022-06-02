import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/load_state.dart';
import '../../../domain/notes/account.dart';
import '../../../domain/notes/i_account_repository.dart';

part 'account_watcher_bloc.freezed.dart';
part 'account_watcher_event.dart';
part 'account_watcher_state.dart';

@injectable
class AccountWatcherBloc
    extends Bloc<AccountWatcherEvent, AccountWatcherState> {
  final IAccountRepository _accountRepository;

  AccountWatcherBloc(this._accountRepository)
      : super(AccountWatcherState.initial());

  @override
  Stream<AccountWatcherState> mapEventToState(
    AccountWatcherEvent event,
  ) async* {
    yield* event.map(getAllStarted: (e) async* {
      yield state.copyWith(
        loadState: const LoadState.inProgress(),
      );
      List<Account> _accountList = await _accountRepository.getAllAccounts();
      add(AccountWatcherEvent.accountsReceived(_accountList));
    },
        // getTotalAmountStarted: (e) async* {
        //   yield state.copyWith(
        //     loadState: const LoadState.inProgress(),
        //   );

        //   int _totalAmount = await
        // },
        accountsReceived: (e) async* {
      yield state.copyWith(
        loadState: const LoadState.success(),
        accounts: e.accounts,
      );
    });
    print(state);
  }

  @override
  Future<void> close() {
    // _userListSubscription?.cancel();

    return super.close();
  }
}
