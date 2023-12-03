// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'injection.dart';
import 'presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // NOTE: 初始化日曆
  initializeDateFormatting();
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
