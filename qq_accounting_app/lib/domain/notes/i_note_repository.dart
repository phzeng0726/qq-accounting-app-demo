import 'package:dartz/dartz.dart';
import 'package:qq_accounting_app/domain/notes/note_failure.dart';

import 'note.dart';

// NOTE: 一般firestore是用Stream來get data，不過sqlite好像是用future搭配bloclistenr來做刷新
abstract class INoteRepository {
  // 根據期間獲取List<NOTE>
  Future<Either<NoteFailure, List<Note>>> getNotesDuringPeriod(
    int accountId,
    String startTime,
    String endTime,
  );

  // 根據期間與AmountType獲取List<NOTE>
  Future<Either<NoteFailure, List<Note>>> getNotesByAmountTypeDuringPeriod(
    int accountId,
    String amountType,
    String startTime,
    String endTime,
  );

  // 根據AmountType獲取總金額
  Future<Either<NoteFailure, int>> getTotalAmountByAmountType(
    int accountId,
    String amountType,
  );

  // 根據期間與AmountType獲取總金額
  Future<Either<NoteFailure, int>> getTotalAmountByAmountTypeDuringPeriod(
    int accountId,
    String amountType,
    String startTime,
    String endTime,
  );
  
  // 每次新增note時的金額驗證
  Future<Option<NoteFailure>> netAmountValidator({
    required Note note,
    required int initialAmount,
  });

  Future<int> computeNetAmount(int accountId);
  // // 每次新增note時的金額驗證
  // Future<int> computeDailyAmount({
  //   required List<Note> noteList,
  // });
  Future<Option<NoteFailure>> create(Note note);
  Future<Option<NoteFailure>> update(Note note);
  Future<Option<NoteFailure>> delete(int noteId);
}
