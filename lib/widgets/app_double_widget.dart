import 'package:flutter/material.dart';

import '../utils/styles.dart';

class AppDoubleWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2.copyWith(color: Colors.white54),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
