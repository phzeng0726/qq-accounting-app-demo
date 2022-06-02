import 'dart:io';
import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

// NOTE: sqlite裡面沒有boolean，可以用數值0 1代替來區分income或expense，我則是直接用string（sqlite裡面叫TEXT）
class DatabaseProvider {
  /*
   * DatabaseProivder is providing database connection for whole project
   */

  static final DatabaseProvider db = DatabaseProvider();

  Database? _database;

  // getter to get database
  // if _database was null (or closed) it's gonna open or create it
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await openDb();
    return _database!;
  }

  openDb() async {
    /*
     * createDatabase method tries to open the database
     * if database not exist it's gonna create it
     * 
     * @params 
     * @return Future<Database>
     */

    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "qqaccouting.db");

    var db = await openDatabase(
      path,
      version: 2,
      onCreate: initDB,
      onUpgrade: upgradeDB,
    );

    return db;
  }

  upgradeDB(Database db, int oldVersion, int newVersion) {
    /*
     * method to upgrade database if version of currnet database
     * is higher than the one exist
     *
     * @params Database, int, int
     */

    initDB(db, newVersion);
  }

  initDB(Database db, int version) async {
    /*
     * initDB method is gonna create database tables 
     * inside new databases
     * 
     * @params Database, int
     * @return 
     */

    
    // NOTE: 要注意最後一個資料後面不能有逗點，浪費我30分鐘debug
    // create accounts table
    await db.execute("CREATE TABLE IF NOT EXISTS accounts ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT, " // id會自動產生
        "title TEXT, "
        "currencyType TEXT, "
        "initialAmount INT "
        ")");

    // create notes table
    await db.execute("CREATE TABLE IF NOT EXISTS notes ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT, " // id會自動產生 AUTOINCREMENT
        "accountId INT, "
        "accountTitle TEXT, "
        "createdTime DATETIME, "
        "amountType TEXT, " // TODO 命名
        "dateTime DATETIME, " // TODO 命名
        "amount INT, "
        "itemName TEXT, "
        "category TEXT, "
        "memo TEXT, "
        "FOREIGN KEY (accountId) REFERENCES accounts(id)"
        ")");

    // enable forigen keys
    await db.execute('PRAGMA foreign_keys = ON');
  }
}
