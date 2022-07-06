// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../application/accounts/account_form/account_form_cubit.dart';
// import '../../../routes/router.gr.dart';

// class CreateAccountFormButton extends StatelessWidget {
//   const CreateAccountFormButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         // 新增account
//         context.read<AccountFormCubit>().initAccount(
//               initialAccount: AccountFormState.initial().account,
//               isEditing: false,
//             );
//         context.pushRoute(const AccountFormRoute());
//       },
//       icon: const Icon(Icons.add),
//     );
//     ;
//   }
// }
