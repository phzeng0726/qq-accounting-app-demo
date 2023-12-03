import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../constants.dart';
import '../../../domain/core/amount_format.dart';

class TotalBalanceWidget extends StatelessWidget {
  final int totalBalance;
  final double radiusSize;
  const TotalBalanceWidget({
    Key? key,
    required this.totalBalance,
    required this.radiusSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radiusSize,
      child: Column(
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
          SizedBox(
            width: radiusSize * 2 - 20,
            child: AutoSizeText(
              '$dollarSign ${AmountFormat(totalBalance).toFormatString()}',
              style: Theme.of(context).textTheme.headline3,
              minFontSize: 16,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
