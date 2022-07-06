// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/accounts/i_account_repository.dart' as _i3;
import 'domain/charts/i_chart_repository.dart' as _i7;
import 'domain/notes/i_account_repository.dart' as _i5;
import 'domain/notes/i_note_repository.dart' as _i9;
import 'infrastructure/accounts/account_repository.dart' as _i4;
import 'infrastructure/charts/chart_repository.dart' as _i8;
import 'infrastructure/notes/account_repository.dart' as _i6;
import 'infrastructure/notes/note_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAccountRepository>(() => _i4.AccountRepository());
  gh.lazySingleton<_i5.IAccountRepository>(() => _i6.AccountRepository());
  gh.lazySingleton<_i7.IChartRepository>(() => _i8.ChartRepository());
  gh.lazySingleton<_i9.INoteRepository>(() => _i10.NoteRepository());
  return get;
}
