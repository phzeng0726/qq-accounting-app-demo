import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(_lightTheme); // super裡面是什麼，初始就
  static TextTheme get _textTheme => const TextTheme(
      headline1: TextStyle(),
      headline2: TextStyle(),
      headline3: TextStyle(),
      headline4: TextStyle(),
      headline5: TextStyle(),
      headline6: TextStyle(),
      subtitle1: TextStyle(fontSize: 18.0),
      subtitle2: TextStyle(fontSize: 16.0),
      bodyText1: TextStyle(fontSize: 16.0),
      bodyText2: TextStyle(fontSize: 14.0),
      button: TextStyle(fontSize: 18.0));

  static final _lightTheme = ThemeData(
    // floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //   foregroundColor: Colors.white,
    // ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF8BAEB8),
    ),
    brightness: Brightness.light,
    primaryColor: const Color(0xFF587A83),
    accentColor: const Color(0xFF8BAEB8),
    textTheme: _textTheme.apply(
      bodyColor: const Color(0xFF0F333B),
    ),
    cardColor: const Color(0xFFC1E5F0).withOpacity(0.6),
    primaryColorDark: const Color(0xFF8BAEB8), // CircleAvatar 預設的背景顏色
  );

  static final _darkTheme = ThemeData(
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   foregroundColor: Colors.black,
      // ),
      brightness: Brightness.dark,
      // primaryColor: const Color(0xFF587A83),
      textTheme: _textTheme,
     );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}

