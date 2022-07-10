import 'package:flutter/cupertino.dart';

// NOTE: 有可能會換幣值，所以用dollorSign，不然一般插入"$"可以直接寫"\$"
String dollarSign = String.fromCharCodes(Runes('\u0024'));

const double kDefaultPadding = 16.0;
const double kDefaultHeightSize = 20.0;
const Radius kDefaultBorderRadius = Radius.circular(30.0);

const List<Map<String, dynamic>> localeMapList = [
  {
    'id': 'zh_TW',
    'title': '繁體中文 (台灣)',
    'locale': Locale('zh', 'TW'),
  },
  {
    'id': 'en_US',
    'title': 'English (US)',
    'locale': Locale('en', 'US'),
  }
];

// https://blog.csdn.net/yechaoa/article/details/89845701
class NoteColors {
  static Color incomeBackgroundColor = const Color(0xFF7AC495).withOpacity(0.9);
  static Color incomeButtonColor = const Color(0xFF5FA97B);
  static Color incomeTextColor = const Color(0xFF2A744A);

  static Color expenseBackgroundColor =
      const Color(0xFFF59AB1).withOpacity(0.9);
  static Color expenseButtonColor = const Color(0xFFBB657D);
  static Color expenseTextColor = const Color(0xFF9F4C64);
  static Color unSelectedColor = const Color(0xFFA9A9A9);
}
