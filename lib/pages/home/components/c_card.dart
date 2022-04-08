import 'package:flutter/material.dart';

import '../../../../utils/dimension.dart';
import '../../../widgets/small_text_widget.dart';

class CCard extends StatelessWidget {
  const CCard({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.h10 * 13,
      width: Dimensions.w10 * 10,
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(imagePath)),
          SizedBox(height: Dimensions.h10 / 2),
          SmallText(
            text: title,
            textAlign: TextAlign.center,
            size: Dimensions.f14,
          )
        ],
      ),
    );
  }
}
