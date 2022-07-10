import 'package:flutter/cupertino.dart';

import 'domain/note/note.dart';

// NOTE: 有可能會換幣值，所以用dollorSign，不然一般插入"$"可以直接寫"\$"
String dollarSign = String.fromCharCodes(Runes('\u0024'));

const double kDefaultPadding = 16.0;
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
  static Color incomeBackgroundColor = const Color(0xff4caf50).withOpacity(0.9);
  static Color incomeButtonColor = const Color(0xff4caf50);
  static Color incomeTextColor = const Color(0xff4caf50);

  static Color expenseBackgroundColor =
      const Color.fromARGB(255, 175, 76, 81).withOpacity(0.9);
  static Color expenseButtonColor = const Color.fromARGB(255, 175, 76, 81);
  static Color expenseTextColor = const Color.fromARGB(255, 175, 76, 81);

  // static const Color colorLoadingDark = Color(0xff388E3C);
  // static const Color loadingText = Color(0xff212121);
  // static const Color loadingTextDark = Color(0xff212121);

  // static const Color colorAccent = Color(0xff8BC34A);
  // static const Color colorPrimaryLight = Color(0xffC8E6C9);

  // static const Color secondaryText = Color(0xff757575);

  // static const Color dividerColor = Color(0xffBDBDBD);
}

// // Each Widget is located at an index which is unique
// int randomNumber = 0;
// List<Note> testNotes = [
//   Note.testIncomeModel(),
//   Note.testIncomeModel().copyWith(
//     itemName: '獎學金',
//     category: '其他收入',
//     amount: 2000,
//   ),
//   Note.testExpenseModel(),
//   Note.testExpenseModel().copyWith(
//     itemName: '公車',
//     category: '交通費',
//     amount: 20,
//   ),
//   Note.testExpenseModel().copyWith(
//     itemName: '水管',
//     category: '水電費',
//   ),
// ];
// Note get testNote => (testNotes..shuffle()).first;
