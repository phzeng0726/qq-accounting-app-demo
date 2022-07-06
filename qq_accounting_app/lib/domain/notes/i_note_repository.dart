import 'package:dartz/dartz.dart';
import 'package:qq_accounting_app/domain/notes/note_failure.dart';

import 'note.dart';

// NOTE: 一般firestore是用Stream來get data，不過sqlite好像是用future搭配bloclistenr來做刷新
abstract class INoteRepository {
  // 全都綁上accountId
  // Future<List<Note>> getNotes();
  Future<Either<NoteFailure, List<Note>>> getNotesDuringPeriod(
    int accountId,
    String startTime,
    String endTime,
  );

  // 獲取總金額
  Future<Either<NoteFailure, int>> getTotalAmountByAmountType(
    int accountId,
    String amountType,
  );
  Future<Either<NoteFailure, List<Note>>> getNotesByAmountTypeDuringPeriod(
    int accountId,
    String amountType,
    String startTime,
    String endTime,
  );

  Future<Option<NoteFailure>> create(Note note);
  Future<Option<NoteFailure>> update(Note note);
  Future<Option<NoteFailure>> delete(int noteId);
}
