
import 'package:qq_accounting_app/domain/notes/account.dart';

import '../accounts/account.dart';

abstract class IAccountRepository {
  Future<List<Account>> getAllAccounts();
  Future<Account?> getAccountById(int accountId);

  Future<int> create(Account account);
  Future<int> update(Account account);
  Future<int> delete(int accountId);
}
