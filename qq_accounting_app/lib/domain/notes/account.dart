// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'account.freezed.dart';

// //  NOTE: account要有
// // incomeCategoryList
// // expenseCategoryList
// // incomeItemNameList
// // expenseItemNameList
// // 不過因為sqlite的table跟firestore不太一樣，不建議存List<String>到column裡面，所以額外要拉表以accountId連接
// // categorys
// // itemName是category的其中一個欄位
// // {'categoryId':0,'accountId':0,'amountType':'expense','title':'水電費','itemName':[]}
// // {'itemNameId':0,'categoryId':0,'accountId':0,'title':'水管'}
// @freezed
// abstract class Account implements _$Account {
//   const Account._();
//   const factory Account({
//     int? id, // NOTE: 為了讓sqflite系統可以自動產生unique key
//     required String title, // 標題（台幣帳戶 之類的）
//     required String currencyType, // 幣別
//     required int initialAmount, // 初始總資產金額
//     // required int totalIncomeAmount,
//     // required int totalExpenseAmount,
//   }) = _Account;

//   factory Account.empty() => Account(
//         id: null,
//         title: '未命名帳戶',
//         currencyType: '新台幣',
//         initialAmount: 0,
//         // totalIncomeAmount: 0,
//         // totalExpenseAmount: 0,
//       );

//   // Option<ValueFailure<dynamic>> get failureOption {
//   //   return (this.id.failureOrUnit)
//   //       .andThen(questionBody.failureOrUnit)
//   //       .fold((f) => some(f), (_) => none());
//   // }
// }
