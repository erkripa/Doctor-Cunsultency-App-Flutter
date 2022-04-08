import 'package:flutter/material.dart';
import 'package:selfe/widgets/app_icon_widget.dart';

import '../utils/dimension.dart';
import 'big_text_widget.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({
    Key? key,
    required this.bigText,
    required this.appIcon, this.onTap,
  }) : super(key: key);

  final AppIcon appIcon;
  final BigText bigText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.w10),
        padding: EdgeInsets.only(
            top: Dimensions.w10, bottom: Dimensions.w10, left: Dimensions.w10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.r15 / 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            appIcon,
            SizedBox(width: Dimensions.w20),
            bigText,
          ],
        ),
      ),
    );
  }
}
