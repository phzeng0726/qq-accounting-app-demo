import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/account/account.dart';
import '../../domain/account/account_failure.dart';
import '../../domain/account/i_account_repository.dart';
import '../core/database_provider.dart';
import 'account_dtos.dart';

@LazySingleton(as: IAccountRepository)
class AccountRepository implements IAccountRepository {
  final DatabaseProvider _databaseProvider = DatabaseProvider.db;

  AccountRepository();

  @override
  Future<Either<AccountFailure, List<Account>>> fetchAllAccounts() async {
    try {
      final db = await _databaseProvider.database;

      List<Map<String, dynamic>> result;

      result = await db.query("accounts"); // 抓全部就是直接query

      List<Account> accounts = result
          .map((account) => AccountDto.fromJson(account).toDomain())
          .toList();

      return right(accounts);
    } catch (e) {
      return left(AccountFailure.api(e.toString()));
    }
  }

  @override
  Future<Either<AccountFailure, Account?>> fetchAccountById(
      int accountId) async {
    try {
      final db = await _databaseProvider.database;

      List<Map<String, dynamic>> result;

      result =
          await db.query("accounts", where: "id = ?", whereArgs: [accountId]);

      // if query doesn't have any result returns null
      if (result.length < 1) return right(null);

      // id column is unique in database so we're gonna have just one item per id
      // inside databaseResult List and that's because index is always 0
      Account accounts = result
          .map((account) => AccountDto.fromJson(account).toDomain())
          .toList()
          .first;

      return right(accounts);
    } catch (e) {
      return left(AccountFailure.api(e.toString()));
    }
  }

  @override
  Future<Option<AccountFailure>> create(Account account) async {
    try {
      final db = await _databaseProvider.database;
      final accountDto = AccountDto.fromDomain(account);

      await db.insert('accounts', accountDto.toJson());
      return none();
    } catch (e) {
      return some(AccountFailure.api(e.toString()));
    }
  }

  @override
  Future<Option<AccountFailure>> update(Account account) async {
    try {
      final db = await _databaseProvider.database;
      final accountDto = AccountDto.fromDomain(account);

      await db.update("accounts", accountDto.toJson(),
          where: "id = ?", whereArgs: [account.id]);

      return none();
    } catch (e) {
      return some(AccountFailure.api(e.toString()));
    }
  }

  @override
  Future<Option<AccountFailure>> delete(int? accountId) async {
    try {
      final db = await _databaseProvider.database;

      await db.delete("accounts", where: "id = ?", whereArgs: [accountId]);

      return none();
    } catch (e) {
      return some(AccountFailure.api(e.toString()));
    }
  }
}
