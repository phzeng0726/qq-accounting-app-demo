import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:qq_accounting_app/presentation/note/note_overview/widgets/note_count_body.dart';
import 'package:qq_accounting_app/presentation/note/note_overview/widgets/note_filter_body.dart';

import '../../../../application/note/note_form/note_form_cubit.dart';
import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../application/core/navigation/navigation_cubit.dart';
import '../../../domain/note/note.dart';
import '../../routes/router.gr.dart';
import 'widgets/note_overview_body.dart';

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
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(FlutterI18n.translate(context, "note.title")),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.data_usage_outlined), text: '統計'),
              Tab(icon: Icon(Icons.home), text: '首頁'),
              Tab(icon: Icon(Icons.filter_alt_outlined), text: '篩選'),
            ],
          ),
          actions: [
            // const DateTimePickerIconButton(),
            IconButton(
              onPressed: () {
                final noteOverviewState =
                    context.read<NoteWatcherCubit>().state;

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
        body: const TabBarView(
          children: [
            NoteCountBody(),
            NoteOverviewBody(),
            NoteFilterBody(),
          ],
        ),
      ),
    );
  }
}
