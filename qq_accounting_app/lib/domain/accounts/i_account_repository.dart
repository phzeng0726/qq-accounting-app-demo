import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:dartz/dartz.dart';
import 'package:qq_accounting_app/domain/accounts/account_failure.dart';

abstract class IAccountRepository {
  Future<Either<AccountFailure, List<Account>>> fetchAllAccounts();
  Future<Either<AccountFailure, Account?>> fetchAccountById(int accountId);
  Future<Option<AccountFailure>> create(Account account);
  Future<Option<AccountFailure>> update(Account account);
  Future<Option<AccountFailure>> delete(int? accountId);
}
