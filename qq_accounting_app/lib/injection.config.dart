// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/accounts/account_watcher/account_watcher_bloc.dart' as _i12;
import 'application/charts/statistic_chart/statistic_chart_bloc.dart' as _i11;
import 'application/notes/note_actor/note_actor_bloc.dart' as _i9;
import 'application/notes/note_watcher/note_watcher_bloc.dart' as _i10;
import 'domain/charts/i_chart_repository.dart' as _i5;
import 'domain/notes/i_account_repository.dart' as _i3;
import 'domain/notes/i_note_repository.dart' as _i7;
import 'infrastructure/charts/chart_repository.dart' as _i6;
import 'infrastructure/notes/account_repository.dart' as _i4;
import 'infrastructure/notes/note_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAccountRepository>(() => _i4.AccountRepository());
  gh.lazySingleton<_i5.IChartRepository>(() => _i6.ChartRepository());
  gh.lazySingleton<_i7.INoteRepository>(() => _i8.NoteRepository());
  gh.factory<_i9.NoteActorBloc>(
      () => _i9.NoteActorBloc(get<_i7.INoteRepository>()));
  gh.factory<_i10.NoteWatcherBloc>(
      () => _i10.NoteWatcherBloc(get<_i7.INoteRepository>()));
  gh.factory<_i11.StatisticChartBloc>(() => _i11.StatisticChartBloc(
      get<_i7.INoteRepository>(), get<_i5.IChartRepository>()));
  gh.factory<_i12.AccountWatcherBloc>(
      () => _i12.AccountWatcherBloc(get<_i3.IAccountRepository>()));
  return get;
}
