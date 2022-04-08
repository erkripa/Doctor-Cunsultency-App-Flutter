import 'package:flutter/material.dart';
import 'package:selfe/global/font_name.dart';

import '../utils/dimension.dart';

class BigText extends StatelessWidget {
  const BigText({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.maxline = 2,
  }) : super(key: key);

  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final double? size;
  final TextAlign textAlign;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxline,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.f26 : size,
        fontFamily: FontName.sourceSansPro,
        overflow: overflow,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
