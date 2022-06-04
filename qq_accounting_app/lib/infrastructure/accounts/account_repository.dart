import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:qq_accounting_app/domain/accounts/account_failure.dart';
import 'package:qq_accounting_app/domain/accounts/i_account_repository.dart';
import 'package:qq_accounting_app/infrastructure/accounts/account_dtos.dart';
import 'package:qq_accounting_app/infrastructure/core/database_provider.dart';

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
  Future<int> create(Account account) async {
    final db = await _databaseProvider.database;
    final accountDto = AccountDto.fromDomain(account);

    var result = db.insert('accounts', accountDto.toJson());
    return result;
  }

  @override
  Future<int> update(Account account) async {
    final db = await _databaseProvider.database;
    final accountDto = AccountDto.fromDomain(account);

    var result = db.update("accounts", accountDto.toJson(),
        where: "id = ?", whereArgs: [account.id]);
    return result;
  }

  @override
  Future<int> delete(int? accountId) async {
    final db = await _databaseProvider.database;

    var result = db.delete("accounts", where: "id = ?", whereArgs: [accountId]);
    return result;
  }
}
