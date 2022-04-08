
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/utils/dimension.dart';

import '../widgets/big_text_widget.dart';

void showCustomSnackBar(String message,
    {String title = 'Error :', bool isError = true}) {
  Get.snackbar(
    title,
    message,
    titleText: BigText(text: title, size: Dimensions.f20, color: Colors.white),
    messageText: Text(
      message,
      style: const TextStyle(color: Colors.white),
    ),
    colorText: Colors.white,
    backgroundColor: Colors.redAccent,
    snackPosition: SnackPosition.TOP,
  );
}
