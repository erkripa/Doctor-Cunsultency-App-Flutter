import 'package:flutter/material.dart';
import 'package:selfe/widgets/app_icon_widget.dart';

import '../utils/dimension.dart';
import '../widgets/big_text_widget.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    this.bgColor = const Color(0xFF18205F),
    this.onPressed,
    this.iconColor = const Color(0xFF2D2D32),
    this.textColor = Colors.white,
    this.text = '',
  }) : super(key: key);

  final Color? bgColor;
  final VoidCallback? onPressed;
  final Color? iconColor;
  final Color? textColor;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Dimensions.w20),
      height: Dimensions.h45 * 1.9,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.h30),
            child: Row(
              children: [
                InkWell(
                  onTap: onPressed,
                  child: AppIcon(
                    icon: Icons.arrow_back_ios,
                    iconColor: iconColor!,
                    size: Dimensions.f20,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(width: Dimensions.w10 / 2),
                BigText(
                  text: text!,
                  color: textColor,
                  size: Dimensions.f20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
