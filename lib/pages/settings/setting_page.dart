import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/pages/settings/change_password_page.dart';

import '../../utils/colors.dart';
import '../../utils/dimension.dart';
import '../../widgets/accout_widget.dart';
import '../../widgets/app_icon_widget.dart';
import '../../widgets/big_text_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: Dimensions.w10, top: Dimensions.h45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () => Get.back(),
                    child: const AppIcon(icon: Icons.arrow_back_ios_new)),
                SizedBox(width: Dimensions.w20),
                Expanded(
                  child: BigText(
                    text: 'Preferences',
                    size: Dimensions.f20,
                  ),
                ),
                Spacer(),
              ],
            ),

            SizedBox(height: Dimensions.h10),
            //phone
            AccountWidget(
              onTap: () {
                Get.to(() => ChangePasswordPage());
              },
              appIcon: AppIcon(
                icon: Icons.password_sharp,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.f16,
                size: Dimensions.f26 * 1.3,
              ),
              bigText: BigText(
                text: 'Change Password',
                size: Dimensions.f16,
              ),
            ),
            SizedBox(height: Dimensions.h10),
            AccountWidget(
              onTap: () {
                // Get.to(() => ChangePassword());
              },
              appIcon: AppIcon(
                icon: Icons.security,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.f16,
                size: Dimensions.f26 * 1.3,
              ),
              bigText: BigText(
                text: 'Privacy Policy',
                size: Dimensions.f16,
              ),
            ),
            SizedBox(height: Dimensions.h10),

            AccountWidget(
              onTap: () {
                // Get.to(() => ChangePassword());
              },
              appIcon: AppIcon(
                icon: Icons.password_sharp,
                backgroundColor: Colors.greenAccent,
                iconColor: Colors.white,
                iconSize: Dimensions.f16,
                size: Dimensions.f26 * 1.3,
              ),
              bigText: BigText(
                text: 'Feedback',
                size: Dimensions.f16,
              ),
            ),

            SizedBox(height: Dimensions.h10),
            AccountWidget(
              onTap: () {
                // Get.to(() => ChangePassword());
              },
              appIcon: AppIcon(
                icon: Icons.password_sharp,
                backgroundColor: Colors.blueAccent.withOpacity(0.9),
                iconColor: Colors.white,
                iconSize: Dimensions.f16,
                size: Dimensions.f26 * 1.3,
              ),
              bigText: BigText(
                text: 'Help and Support',
                size: Dimensions.f16,
              ),
            ),
            //
            SizedBox(height: Dimensions.h10),
            AccountWidget(
              onTap: () {
                // Get.to(() => ChangePassword());
              },
              appIcon: AppIcon(
                icon: Icons.password_sharp,
                backgroundColor: Colors.lightBlueAccent,
                iconColor: Colors.white,
                iconSize: Dimensions.f16,
                size: Dimensions.f26 * 1.3,
              ),
              bigText: BigText(
                text: 'Rate Selfeey',
                size: Dimensions.f16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
