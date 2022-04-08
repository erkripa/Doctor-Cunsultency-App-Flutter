import 'package:flutter/material.dart';
import 'package:selfe/global/font_name.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF414146),
    this.size = 12,
    this.height = 1.2,
    this.maxLines = 10,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String text;
  final Color? color;
  final double? size;
  final double height;
  final int maxLines;
  final TextOverflow overflow;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: color,
        fontSize: size,
        fontFamily: FontName.sourceSansPro,
      ),
    );
  }
}
