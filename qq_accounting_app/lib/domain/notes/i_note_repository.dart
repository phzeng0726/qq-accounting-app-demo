import 'note.dart';
  // NOTE: 一般firestore是用Stream來get data，不過sqlite好像是用future搭配bloclistenr來做刷新
abstract class INoteRepository {
  // 全都綁上accountId
  // Future<List<Note>> getNotes();
  Future<List<Note>> getNotesFromTimeToTime(
    int accountId,
    String startTime,
    String endTime,
  );

  // 獲取總金額
  Future<int> getTotalAmountByAmountType(
    int accountId,
    String amountType,
  );
  Future<List<Note>> getNotesByAmountTypeFromTimeToTime(
    int accountId,
    String amountType,
    String startTime,
    String endTime,
  );
  // Future<int> getTotalAmountByAmountType(String amountType);

  Future<int> create(Note note);
  Future<int> update(Note note);
  Future<int> delete(int noteId);
  // FIXME: 暫時新增
  // NOTE: 以date get日期之後再篩選，不需要碰db
  // Future<List<Note>> filterNotesByAmountType(
  //   List<Note> notes,
  //   String amountType,
  // );
}
