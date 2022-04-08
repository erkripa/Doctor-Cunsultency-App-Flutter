import 'package:flutter/material.dart';
import 'package:selfe/widgets/small_text_widget.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({
    Key? key,
    required this.imagPath,
    required this.title,
    this.desc = '',
  }) : super(key: key);

  final String imagPath;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Dimensions.h10 * 10,
      // width: Dimensions.h20 * 5,
      margin: EdgeInsets.only(bottom: Dimensions.h10 / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.r15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4)),
        ],
        border: Border.all(color: Colors.grey.withOpacity(0.4)),
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.w10),
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: (Dimensions.h10 * 4) - 3,
                backgroundImage: AssetImage(imagPath),
              ),
            ),
            BigText(
              text: title,
              maxline: 1,
              textAlign: TextAlign.center,
              size: Dimensions.f16,
            ),
            SmallText(
              text: desc,
              maxLines: 1,
              size: Dimensions.f16,
              color: Colors.grey[500],
            ),
            SizedBox(height: Dimensions.h10 / 2),
            SizedBox(
              height: 34,
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 0.5,
                      color: AppColors.mainColor,
                    ),
                  ),
                  child: BigText(
                    text: 'Connect',
                    color: AppColors.mainColor,
                    size: Dimensions.f12,
                    maxline: 1,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
