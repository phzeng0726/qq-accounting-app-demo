import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/notes/note_form/note_form_cubit.dart';
import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
import '../../../application/core/navigation/navigation_cubit.dart';
import '../../../domain/notes/note.dart';
import '../../routes/router.gr.dart';
import 'widgets/note_overview_body.dart';
import 'widgets/note_overview_page_listeners.dart';

class NoteOverviewPage extends StatelessWidget {
  final int? accountId;
  final String accountName;
  const NoteOverviewPage({
    Key? key,
    required this.accountId,
    required this.accountName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: listeners,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(FlutterI18n.translate(context, "note.title")),
          actions: [
            // const DateTimePickerIconButton(),
            IconButton(
              onPressed: () {
                final noteOverviewState = context.read<NoteWatcherCubit>().state;

                // NOTE:　新增note時，將 noteOverviewState目前的accountId跟focusedDay傳入NoteForm
                Note initNote = NoteFormState.initial().note.copyWith(
                      accountId: noteOverviewState.account.id!,
                      dateTime: noteOverviewState.focusedDay,
                    );
                context.read<NoteFormCubit>().initialized(initNote, false);

                context.pushRoute(const NoteFormRoute());
                context.read<NavigationCubit>().pushOrPopPage();
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: const NoteOverviewBody(),
      ),
    );
  }
}
