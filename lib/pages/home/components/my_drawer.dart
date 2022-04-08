import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/pages/profile/user_profile_page.dart';
import 'package:selfe/pages/settings/setting_page.dart';
import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';
import 'package:selfe/widgets/small_text_widget.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: AppColors.textColor,
        iconColor: AppColors.mainColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // width: Dimensions.h10 * 10 + Dimensions.h30,
                // height: Dimensions.h10 * 10 + Dimensions.h30,
                margin: EdgeInsets.only(
                  top: Dimensions.h10,
                  bottom: Dimensions.h30,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/person.png',
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.home),
                        title: const Text('Home'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: Dimensions.f20,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.to(() => UserProfilePage());
                        },
                        leading: const Icon(Icons.account_circle_rounded),
                        title: const Text('Profile'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: Dimensions.f20,
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.favorite),
                        title: const Text('Favourites'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: Dimensions.f20,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.to(() => const SettingPage());
                        },
                        leading: const Icon(Icons.settings),
                        title: const Text('Settings'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: Dimensions.f20,
                        ),
                      ),
                      ///////
                    ],
                  ),
                )),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: Dimensions.f12,
                color: AppColors.textColor,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: Dimensions.h15,
                ),
                child: SmallText(
                  text: 'Terms of Service | Privacy Policy',
                  color: AppColors.mainBlackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
