import 'package:flutter/material.dart';

import '../utils/dimension.dart';
import '../widgets/big_text_widget.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader(
      {Key? key,
      this.title = "Processing..",
      this.color = const Color(0xFF18205F)})
      : super(key: key);

  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Dialog(
        elevation: 10,
        child: Container(
          height: Dimensions.h10 * 7,
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.all(Dimensions.w15),
            child: Row(
              children: [
                CircularProgressIndicator(
                  color: color,
                ),
                SizedBox(width: Dimensions.w20),
                BigText(
                  text: title,
                  color: color,
                  size: Dimensions.f20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
