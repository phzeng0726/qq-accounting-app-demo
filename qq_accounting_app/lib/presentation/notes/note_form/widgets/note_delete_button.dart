import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/domain/notes/note.dart';

import '../../../../application/notes/note_actor/note_actor_cubit.dart';

class NoteDeleteButton extends StatelessWidget {
  final Note note;
  const NoteDeleteButton({
    Key? key,
    required this.note,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("警告"),
              content: const Text("是否要刪除此筆資料？"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    context.read<NoteActorCubit>().deleted(note.id!);

                    context.router.popUntil((route) => route.isFirst);
                  },
                  child: const Text('是'),
                ),
                ElevatedButton(
                  onPressed: () => context.router.pop(),
                  child: const Text('否'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
