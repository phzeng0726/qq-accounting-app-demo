import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../../application/account/account_form/account_form_cubit.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 50.0;
    double buttonWidth = 150.0;

    return BlocBuilder<AccountFormCubit, AccountFormState>(
      // buildWhen: (p, c) => p.signInState != c.signInState,
      builder: (context, state) {
        return Flexible(
          child: SizedBox(
            height: buttonHeight,
            width: buttonWidth,
            child: TextFormField(
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              initialValue: state.account.title,
              onChanged: (value) =>
                  context.read<AccountFormCubit>()..titleChanged(value),
              validator: (_) =>
                  context.read<AccountFormCubit>().state.account.title,
              style: Theme.of(context).textTheme.subtitle1,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: FlutterI18n.translate(
                  context,
                  "accountForm.titleBoxHint",
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
