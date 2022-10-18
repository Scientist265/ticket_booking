import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2.5,
            color:
                isColor == null ? CupertinoColors.white : Styles.primaryColor,
          )),
    );
  }
}
