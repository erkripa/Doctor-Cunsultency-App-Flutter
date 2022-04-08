
import 'package:flutter/material.dart';

import '../utils/dimension.dart';
import 'big_text_widget.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            icon,
            color: Colors.green,
          ),
        ),
        SizedBox(width: Dimensions.w10),
        Expanded(
          child: BigText(
            text: text,
            maxline: 1,
            size: Dimensions.f14,
          ),
        )
      ],
    );
  }
}
