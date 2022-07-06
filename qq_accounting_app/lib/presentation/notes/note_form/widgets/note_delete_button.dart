import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qq_accounting_app/application/notes/note_blocs.dart';
import 'package:qq_accounting_app/domain/notes/note.dart';

class NoteDeleteButton extends StatelessWidget {
  final Note note;
  NoteDeleteButton(this.note);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete),
      onPressed: () async {
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("警告"),
              content: Text("是否要刪除此筆資料？"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<NoteActorBloc>()
                        .add(NoteActorEvent.deleted(note.id!));
                    print('Success deleted ${note}');
                    context.router.popUntil((route) => route.isFirst);
                  },
                  child: Text('是'),
                ),
                ElevatedButton(
                  onPressed: () => context.router.pop(),
                  child: Text('否'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
