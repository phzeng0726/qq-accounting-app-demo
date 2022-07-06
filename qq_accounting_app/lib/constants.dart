import 'package:flutter/cupertino.dart';

// NOTE: 有可能會換幣值，所以用dollorSign，不然一般插入"$"可以直接寫"\$"
String dollorSign = String.fromCharCodes(Runes('\u0024'));

const double kDefaultPadding = 20.0;
const double kDefaultHeightSize = 20.0;

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
  static Color expenseBackgroundColor = Color(0xff4caf50).withOpacity(0.9);
  static Color expenseButtonColor = Color(0xff4caf50);
  static Color expenseTextColor = Color(0xff4caf50);

  static Color incomeBackgroundColor =
      Color.fromARGB(255, 175, 76, 81).withOpacity(0.9);
  static Color incomeButtonColor = Color.fromARGB(255, 175, 76, 81);
  static Color incomeTextColor = Color.fromARGB(255, 175, 76, 81);

  // static const Color colorLoadingDark = Color(0xff388E3C);
  // static const Color loadingText = Color(0xff212121);
  // static const Color loadingTextDark = Color(0xff212121);

  // static const Color colorAccent = Color(0xff8BC34A);
  // static const Color colorPrimaryLight = Color(0xffC8E6C9);

  // static const Color secondaryText = Color(0xff757575);

  // static const Color dividerColor = Color(0xffBDBDBD);
}
