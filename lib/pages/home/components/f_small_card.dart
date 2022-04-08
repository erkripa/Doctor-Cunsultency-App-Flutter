import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import '../../../widgets/small_text_widget.dart';

class FSmallCard extends StatelessWidget {
  const FSmallCard({
    Key? key,
    required this.icon,
    required this.smallText,
    required this.bigText,
  }) : super(key: key);

  final IconData icon;
  final String smallText;
  final String bigText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: AppColors.mainColor,
            size: Dimensions.h30,
          ),
          SmallText(
            text: smallText,
            size: Dimensions.h15,
          ),
          BigText(text: bigText),
        ],
      ),
    );
  }
}
