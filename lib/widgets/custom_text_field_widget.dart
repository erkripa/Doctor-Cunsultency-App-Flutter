import 'package:flutter/material.dart';
import 'package:selfe/utils/colors.dart';

import '../global/font_name.dart';
import '../utils/dimension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textController,
    required this.hintText,
    required this.icon,
    this.isObsecure = false,
    this.iconColor = const Color(0xFF18205F),
    this.maxLine = 1,
    this.keyboardType,
  }) : super(key: key);

  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  final bool isObsecure;
  final Color? iconColor;
  final int maxLine;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.w20),
      height: Dimensions.h10 * 5.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.r15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 1,
            spreadRadius: 2,
            offset: const Offset(1, 1),
          )
        ],
      ),
      child: TextField(
        controller: textController,
        obscureText: isObsecure ? true : false,
        maxLines: maxLine,
        textAlignVertical: TextAlignVertical.bottom,
        keyboardType: keyboardType,
        cursorColor: AppColors.mainColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontFamily: FontName.sourceSansPro,
              color: Colors.grey.withOpacity(0.8)),
          prefixIcon: Icon(
            icon,
            color: iconColor,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.r15),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.white,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.r15),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
