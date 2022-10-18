import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

class AppTicketTab extends StatelessWidget {
  final String leftText;
  final String rightText;
  const AppTicketTab({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.all(3.5),
      decoration: BoxDecoration(
          color: Styles.containerColor,
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          )),
      child: Row(
        children: [
          Container(
            width: size.width * .44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(
                  AppLayout.getHeight(50),
                ),
              ),
            ),
            child: Center(
                child: Text(
              leftText,
              style: Styles.textStyle.copyWith(
                color: Colors.black,
              ),
            )),
          ),
          Container(
            width: size.width * .44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.transparent),
            child: Center(
                child: Text(
              rightText,
              style: Styles.textStyle.copyWith(
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
