import 'package:flutter/material.dart';

import '../../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import '../../../widgets/small_text_widget.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.desc,
    this.bgColor = const Color(0xFFAFCFED),
    this.onTap,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String desc;
  final Color bgColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(Dimensions.w10),
        child: Container(
          height: Dimensions.h220,
          // width: Dimensions.h15 * 8,
          margin: EdgeInsets.only(top: Dimensions.h10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.r20),
            border: Border.all(width: 2.0, color: Colors.grey.withOpacity(0.2)),
          ),
          child: Column(
            children: [
              //image part
              Container(
                height: Dimensions.h10 * 11,
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
              Container(
                padding: EdgeInsets.all(Dimensions.w10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: title,
                      size: Dimensions.f16,
                    ),
                    SizedBox(height: Dimensions.h10 / 2),
                    SmallText(text: desc)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
