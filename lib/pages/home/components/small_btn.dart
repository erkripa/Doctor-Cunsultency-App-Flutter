import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/small_text_widget.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    this.text = '',
    this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.h30,
      padding: EdgeInsets.only(
        left: Dimensions.w10,
        right: Dimensions.w10,
        top: Dimensions.w10 / 2,
        bottom: Dimensions.w10 / 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(Dimensions.r15 / 2),
      ),
      child: SmallText(
        text: text,
        color: Colors.white,
        size: Dimensions.f16,
      ),
    );
  }
}
