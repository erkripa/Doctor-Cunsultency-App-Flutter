import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/widgets/long_button_widget.dart';
import 'package:selfe/widgets/small_text_widget.dart';

import '../../utils/dimension.dart';
import '../../widgets/app_icon_widget.dart';
import '../../widgets/big_text_widget.dart';
import '../../widgets/custom_text_field_widget.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: Dimensions.w10, top: Dimensions.h45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () => Get.back(),
                    child: const AppIcon(icon: Icons.arrow_back_ios_new)),
                SizedBox(width: Dimensions.w20),
                Expanded(
                  child: BigText(
                    text: 'Change Password',
                    size: Dimensions.f20,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.h10),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          top: Dimensions.h10,
                          left: Dimensions.h25,
                          bottom: Dimensions.h10 / 2),
                      child: SmallText(
                        text: 'Current Password',
                        size: Dimensions.f16,
                      )),
                  CustomTextField(
                    textController: TextEditingController(),
                    hintText: 'Current Password',
                    icon: Icons.account_circle_outlined,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: Dimensions.h10,
                          left: Dimensions.h25,
                          bottom: Dimensions.h10 / 2),
                      child: SmallText(
                        text: 'New Password',
                        size: Dimensions.f16,
                      )),
                  CustomTextField(
                    textController: TextEditingController(),
                    hintText: 'New Password',
                    icon: Icons.account_circle_outlined,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: Dimensions.h10,
                          left: Dimensions.h25,
                          bottom: Dimensions.h10 / 2),
                      child: SmallText(
                        text: 'Confirm Password',
                        size: Dimensions.f16,
                      )),
                  CustomTextField(
                    textController: TextEditingController(),
                    hintText: 'Confirm Password',
                    icon: Icons.account_circle_outlined,
                  ),
                  SizedBox(height: Dimensions.h30),
                  LongButton(text: 'Confirm', onPressed: () {}),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
