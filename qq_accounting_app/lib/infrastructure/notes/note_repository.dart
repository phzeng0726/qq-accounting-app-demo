import 'package:injectable/injectable.dart';

import '../../domain/notes/i_note_repository.dart';
import '../../domain/notes/note.dart';
import '../core/database_provider.dart';
import 'note_dtos.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final DatabaseProvider _databaseProvider = DatabaseProvider.db;

  NoteRepository();
  // NOTE: R
  // Future<List<Note>> getNotes() async {
  //   final db = await _databaseProvider.database;

  //   List<Map<String, dynamic>> result;

  //   result = await db.rawQuery(
  //       "SELECT DISTINCT notes.*, accounts.title AS accountTitle FROM notes LEFT JOIN accounts ON notes.accountId = accounts.id");
  //   List<Note> notes =
  //       result.map((note) => NoteDto.fromJson(note).toDomain()).toList();
  //   return notes;
  // }

  Future<List<Note>> getNotesFromTimeToTime(
    int accountId,
    String startTime,
    String endTime,
  ) async {
    final db = await _databaseProvider.database;

    List<Map<String, dynamic>> result;
    result = await db.rawQuery(
        "SELECT DISTINCT notes.* FROM notes WHERE accountId = ? AND date(dateTime) BETWEEN date(?) AND date(?)",
        [accountId, startTime, endTime]);

    List<Note> _notes =
        result.map((note) => NoteDto.fromJson(note).toDomain()).toList();
    return _notes;
  }

  // // 考慮如何移除01
  // Future<List<Note>> filterNotesByAmountType(
  //   List<Note> notes,
  //   String amountType,
  // ) async {
  //   return notes.where((note) => note.amountType == amountType).toList();
  // }
  // 考慮如何移除02
  Future<int> computeNetAmount(int accountId) async {
    int _totalExpense = await getTotalAmountByAmountType(accountId, 'expense');
    int _totalIncome = await getTotalAmountByAmountType(accountId, 'income');
    return _totalIncome - _totalExpense;
  }

  Future<int> getTotalAmountByAmountType(
    int accountId,
    String amountType,
  ) async {
    final db = await _databaseProvider.database;

    List<Map<String, dynamic>> result;
    result = await db.rawQuery(
        "SELECT DISTINCT notes.* FROM notes WHERE accountId = ? AND amountType = ?",
        [accountId, amountType]);

    List<Note> _notes =
        result.map((note) => NoteDto.fromJson(note).toDomain()).toList();

    int _totalAmount = 0;

    _notes.forEach((note) => _totalAmount += note.amount);

    return _totalAmount;
  }

  Future<List<Note>> getNotesByAmountTypeFromTimeToTime(
    int accountId,
    String amountType,
    String startTime,
    String endTime,
  ) async {
    final db = await _databaseProvider.database;

    List<Map<String, dynamic>> result;
    result = await db.rawQuery(
        "SELECT DISTINCT notes.* FROM notes WHERE accountId = ? AND amountType = ? AND date(dateTime) BETWEEN date(?) AND date(?)",
        [accountId, amountType, startTime, endTime]);

    List<Note> _notes =
        result.map((note) => NoteDto.fromJson(note).toDomain()).toList();
    return _notes;
  }

  // NOTE: CUD
  Future<int> create(Note note) async {
    final db = await _databaseProvider.database;
    final noteDto = NoteDto.fromDomain(note);

    var result = db.insert("notes", noteDto.toJson());
    return result;
  }

  Future<int> update(Note note) async {
    final db = await _databaseProvider.database;
    final noteDto = NoteDto.fromDomain(note);

    var result = db.update("notes", noteDto.toJson(),
        where: "id = ?", whereArgs: [note.id]);
    return result;
  }

  Future<int> delete(int noteId) async {
    final db = await _databaseProvider.database;

    var result = db.delete("notes", where: "id = ?", whereArgs: [noteId]);
    return result;
  }
}
