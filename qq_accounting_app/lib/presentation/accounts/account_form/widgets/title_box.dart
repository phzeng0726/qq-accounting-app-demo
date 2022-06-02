import 'package:flutter/material.dart';
import 'package:qq_accounting_app/application/accounts/account_blocs.dart';


class TitleBox extends StatelessWidget {
  const TitleBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _buttonHeight = 50.0;
    double _buttonWidth = 150.0;

    return BlocBuilder<AccountFormBloc, AccountFormState>(
      // buildWhen: (p, c) => p.signInState != c.signInState,
      builder: (context, state) {
        return Flexible(
          child: Container(
            height: _buttonHeight,
            width: _buttonWidth,
            child: TextFormField(
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              initialValue: state.account.title,
              onChanged: (value) => context
                  .read<AccountFormBloc>()
                  .add(AccountFormEvent.titleChanged(value)),
              validator: (_) =>
                  context.read<AccountFormBloc>().state.account.title,
              style: Theme.of(context).textTheme.subtitle1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "未輸入",
              ),
            ),
          ),
        );
      },
    );
  }
}
