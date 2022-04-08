import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text_widget.dart';

class LongButton extends StatelessWidget {
  const LongButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: Dimensions.h10 * 5.5,
        width: Dimensions.screenWidth / 1.3,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: AppColors.mainColor,
            shape: const StadiumBorder(),
          ),
          child: BigText(
            text: text,
            color: Colors.white,
            size: Dimensions.f20,
          ),
        ),
      ),
    );
  }
}
