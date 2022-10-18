import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        AppLayout.getHeight(10),
      ),
      height: AppLayout.getHeight(50),
      width: AppLayout.getWidth(100),
      decoration: BoxDecoration(
        color: Styles.containerColor,
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(10),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white54,
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Styles.textStyle.copyWith(color: Colors.white54),
          )
        ],
      ),
    );
  }
}
