import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../constants.dart';
import '../../../domain/core/amount_format.dart';

class TotalBalanceWidget extends StatelessWidget {
  final int totalBalance;
  const TotalBalanceWidget({
    Key? key,
    required this.totalBalance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          FlutterI18n.translate(context, "home.totalBalance"),
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Theme.of(context).textTheme.headline3!.color,
              ),
        ),
        const SizedBox(
          height: kDefaultHeightSize / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.attach_money,
              size: 40.0,
              color: Theme.of(context).textTheme.headline3!.color,
            ),
            const SizedBox(
              width: kDefaultHeightSize / 2,
            ),
            Text(
              AmountFormat(totalBalance).toFormatString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ],
    );
  }
}
