import 'package:flutter/material.dart';

import '../../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';

class MyNavCard extends StatelessWidget {
  const MyNavCard({
    Key? key,
    required this.imagePath,
    required this.title,
    this.bgColor = const Color(0xFFD5D8FC),
  }) : super(key: key);

  final String imagePath;
  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.h10 * 13,
      width: Dimensions.h10 * 10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.r20),
        border: Border.all(width: 2.0, color: Colors.grey.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          //image part
          Container(
            height: Dimensions.h10 * 7,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.r20),
                  topRight: Radius.circular(Dimensions.r20)),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(imagePath),
              ),
            ),
          ),
          //text part
          Expanded(
            child: Container(
              padding: EdgeInsets.all(Dimensions.w10 / 2),
              child: BigText(
                text: title,
                textAlign: TextAlign.center,
                size: Dimensions.f16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
