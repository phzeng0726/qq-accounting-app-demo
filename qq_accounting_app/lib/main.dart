import 'package:bloc/bloc.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'injection.dart';
import 'presentation/core/app_widget.dart';
import 'simple_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: kIsWeb
  //       ? HydratedStorage.webStorageDirectory
  //       : await getApplicationDocumentsDirectory(),
  // );
  //NOTE: 初始化日曆的語
  initializeDateFormatting();
  configureInjection(Environment.prod);
  // Bloc.observer = SimpleBlocObserver();
  // await Firebase.initializeApp();
  BlocOverrides.runZoned(
    () {
      runApp(const AppWidget());
    },
    blocObserver: SimpleBlocObserver(),
  );
  // runApp(const AppWidget());
}
