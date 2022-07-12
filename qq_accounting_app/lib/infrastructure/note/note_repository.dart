import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/logger.dart';
import '../../domain/note/category.dart';
import '../../domain/note/i_note_repository.dart';
import '../../domain/note/note.dart';
import '../../domain/note/note_failure.dart';
import '../core/database_provider.dart';
import 'category_dtos.dart';
import 'note_dtos.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final DatabaseProvider _databaseProvider = DatabaseProvider.db;

  NoteRepository();
  // NOTE: R
  // 根據 accountId 和 amountType 獲取List<Category>
  @override
  Future<Either<NoteFailure, List<Category>>> getCategoryList(
    int accountId,
    String amountType,
  ) async {
    try {
      final db = await _databaseProvider.database;

      List<Map<String, dynamic>> result;
      result = await db.rawQuery(
          "SELECT DISTINCT categorys.* FROM categorys WHERE accountId = ? AND amountType = ?",
          [accountId, amountType]);

      List<Category> categorys = result
          .map((category) => CategoryDto.fromJson(category).toDomain())
          .toList();

      return right(categorys);
    } catch (e) {
      LoggerService.simple.i(e);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, List<Note>>> getNotesRange(
    int accountId,
    String startTime,
    String endTime,
  ) async {
    try {
      final db = await _databaseProvider.database;

      List<Map<String, dynamic>> result;
      result = await db.rawQuery(
          "SELECT DISTINCT notes.* FROM notes WHERE accountId = ? AND date(dateTime) BETWEEN date(?) AND date(?)",
          [accountId, startTime, endTime]);

      List<Note> notes =
          result.map((note) => NoteDto.fromJson(note).toDomain()).toList();
      return right(notes);
    } catch (e) {
      LoggerService.simple.i(e);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<int> computeNetAmount(int accountId) async {
    final eitherExpense = await getTotalAmountByAmountType(
      accountId,
      'expense',
    );
    final eitherIncome = await getTotalAmountByAmountType(
      accountId,
      'income',
    );

    final totalExpense =
        eitherExpense.getOrElse(() => throw UnimplementedError());
    final totalIncome =
        eitherIncome.getOrElse(() => throw UnimplementedError());

    return totalIncome - totalExpense;
  }

  @override
  Future<Option<NoteFailure>> netAmountValidator({
    required Note note,
    required int initialAmount,
  }) async {
    try {
      int netAmount = await computeNetAmount(note.accountId);

      int accountBalance = initialAmount + netAmount;

      if (note.amount <= 0) {
        return some(const NoteFailure.amountMustGreaterThan0());
      } else if (note.amountType == 'expense' && note.amount > accountBalance) {
        return some(const NoteFailure.insufficientBalance());
      } else {
        return none();
      }
    } catch (e) {
      LoggerService.simple.i(e);
      return some(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, int>> getTotalAmountByAmountType(
    int accountId,
    String amountType,
  ) async {
    try {
      final db = await _databaseProvider.database;

      List<Map<String, dynamic>> result;
      result = await db.rawQuery(
          "SELECT DISTINCT notes.* FROM notes WHERE accountId = ? AND amountType = ?",
          [accountId, amountType]);

      List<Note> notes =
          result.map((note) => NoteDto.fromJson(note).toDomain()).toList();

      int totalAmount = 0;

      for (var note in notes) {
        totalAmount += note.amount;
      }

      return right(totalAmount);
    } catch (e) {
      LoggerService.simple.i(e);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, List<Note>>> getNotesByAmountTypeRange(
    int accountId,
    String amountType,
    String startTime,
    String endTime,
  ) async {
    try {
      final db = await _databaseProvider.database;

      List<Map<String, dynamic>> result;
      result = await db.rawQuery(
          "SELECT DISTINCT notes.* FROM notes WHERE accountId = ? AND amountType = ? AND date(dateTime) BETWEEN date(?) AND date(?)",
          [accountId, amountType, startTime, endTime]);

      List<Note> notes =
          result.map((note) => NoteDto.fromJson(note).toDomain()).toList();
      return right(notes);
    } catch (e) {
      LoggerService.simple.i(e);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, int>> getTotalAmountByAmountTypeRange(
    int accountId,
    String amountType,
    String startTime,
    String endTime,
  ) async {
    try {
      final db = await _databaseProvider.database;

      List<Map<String, dynamic>> result;
      result = await db.rawQuery(
          "SELECT DISTINCT notes.* FROM notes WHERE accountId = ? AND amountType = ? AND date(dateTime) BETWEEN date(?) AND date(?)",
          [accountId, amountType, startTime, endTime]);

      List<Note> notes =
          result.map((note) => NoteDto.fromJson(note).toDomain()).toList();

      int totalAmount = 0;

      for (var note in notes) {
        totalAmount += note.amount;
      }

      return right(totalAmount);
    } catch (e) {
      LoggerService.simple.i(e);
      return left(const NoteFailure.unexpected());
    }
  }

  // NOTE: CUD
  @override
  Future<Option<NoteFailure>> createCategory(Category category) async {
    try {
      final db = await _databaseProvider.database;
      final categoryDto = CategoryDto.fromDomain(category);

      await db.insert("categorys", categoryDto.toJson());
      return none();
    } catch (e) {
      LoggerService.simple.i(e);
      return some(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Option<NoteFailure>> create(Note note) async {
    try {
      final db = await _databaseProvider.database;
      final noteDto = NoteDto.fromDomain(note);

      await db.insert("notes", noteDto.toJson());
      return none();
    } catch (e) {
      LoggerService.simple.i(e);
      return some(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Option<NoteFailure>> update(Note note) async {
    try {
      final db = await _databaseProvider.database;
      final noteDto = NoteDto.fromDomain(note);

      await db.update("notes", noteDto.toJson(),
          where: "id = ?", whereArgs: [note.id]);
      return none();
    } catch (e) {
      LoggerService.simple.i(e);
      return some(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Option<NoteFailure>> delete(int noteId) async {
    try {
      final db = await _databaseProvider.database;

      await db.delete("notes", where: "id = ?", whereArgs: [noteId]);
      return none();
    } catch (e) {
      LoggerService.simple.i(e);
      return some(const NoteFailure.unexpected());
    }
  }
}
