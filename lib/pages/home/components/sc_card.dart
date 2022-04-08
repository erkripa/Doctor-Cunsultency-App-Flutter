import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';

class SCCard extends StatelessWidget {
  const SCCard({
    Key? key,
    required this.imagPath,
    required this.title,
  }) : super(key: key);

  final String imagPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // height: Dimensions.h10 * 12,
              // width: Dimensions.h20 * 5,
              margin: EdgeInsets.only(bottom: Dimensions.h10 / 2),
              decoration: BoxDecoration(
                  color: AppColors.imageBackColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(Dimensions.r15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 4)),
                  ],
                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imagPath))),
            ),
          ),
          Expanded(
            flex: 1,
            child: BigText(
              text: title,
              maxline: 2,
              textAlign: TextAlign.center,
              size: Dimensions.f20,
            ),
          )
        ],
      ),
    );
  }
}
