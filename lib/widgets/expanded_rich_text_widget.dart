
import 'package:flutter/material.dart';

import '../global/font_name.dart';
import '../utils/colors.dart';
import '../utils/dimension.dart';

class ExpandedRichText extends StatelessWidget {
  const ExpandedRichText({
    Key? key,
    required this.firstTitle,
    required this.secondTitle,
  }) : super(key: key);

  final String firstTitle;
  final String secondTitle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        text: TextSpan(
          text: firstTitle,
          style: TextStyle(
            color: AppColors.mainBlackColor,
            fontFamily: FontName.sourceSansPro,
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.f16 - 1,
          ),
          children: [
            TextSpan(
              text: secondTitle,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontFamily: FontName.sourceSansPro,
                color: AppColors.mainBlackColor.withOpacity(0.9),
                fontWeight: FontWeight.normal,
                fontSize: Dimensions.f14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
