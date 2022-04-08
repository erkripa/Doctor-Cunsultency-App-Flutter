import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/pages/profile/edit_user_profile_page.dart';
import 'package:selfe/routes/routes.dart';
import 'package:selfe/widgets/small_text_widget.dart';

import '../../data/controllers/image_picker_controller.dart';
import '../../utils/colors.dart';
import '../../utils/dimension.dart';
import '../../widgets/accout_widget.dart';
import '../../widgets/app_icon_widget.dart';
import '../../widgets/big_text_widget.dart';
import '../mentors/mentors_page.dart';

class UserProfilePage extends StatelessWidget {
  UserProfilePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    // if (_userLoggedIn) {
    //   Get.find<UserController>().getUserInfo();
    //   print("User logged in");
    // }

    
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

      
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: Dimensions.h45),

        //
        Container(
          margin: EdgeInsets.only(
            left: Dimensions.w10,
            right: Dimensions.w10,
            bottom: Dimensions.h30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () => Get.toNamed(RouteHelper.getInitial()),
                  child: const AppIcon(icon: Icons.arrow_back_ios_new)),
              BigText(
                text: 'My Profile ',
                size: Dimensions.f20,
              ),
              const InkWell(
                  // onTap: () => Get.toNamed(RouteHelper.getInitial()),
                  child: AppIcon(
                icon: Icons.more_vert_outlined,
                backgroundColor: Colors.white,
              )),
            ],
          ),
        ),

        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              //
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.w30, bottom: Dimensions.h30),
                child: Row(
                  children: [
                    Obx(() => imagePickerController.isProfilePiceSet.value
                        ? CircleAvatar(
                            maxRadius: Dimensions.h10 * 6,
                            backgroundImage: imagePickerController
                                    .isProfilePiceSet.value
                                ? FileImage(File(imagePickerController
                                    .profilePicPath.value)) as ImageProvider
                                : const AssetImage('assets/images/profile.jpg'),
                          )
                        : AppIcon(
                            icon: Icons.account_circle,
                            backgroundColor: AppColors.whiteWithOpecity,
                            iconColor: Colors.white,
                            iconSize: Dimensions.f26 * 3,
                            size: Dimensions.h15 * 6,
                          )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.w15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: 'Ayush Kumar',
                            size: Dimensions.f20,
                          ),
                          SmallText(
                            text: 'Flutter Developer',
                            size: Dimensions.f16,
                            color: Colors.grey[500],
                          ),
                          SmallText(
                            text: 'info@gmail.com',
                            size: Dimensions.f12,
                            color: Colors.grey[500],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => EditUserProfilePage());
                      },
                      child: AppIcon(
                        icon: Icons.edit_outlined,
                        backgroundColor: Colors.white.withOpacity(0.1),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Dimensions.h10),

              //
              AccountWidget(
                onTap: () {
                  Get.to(() => MentorsPage());
                },
                appIcon: AppIcon(
                  icon: Icons.account_circle_rounded,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.f20,
                  size: Dimensions.f26 * 1.3,
                ),
                bigText: BigText(
                  text: 'Mentors',
                  size: Dimensions.f20,
                ),
              ),
              SizedBox(height: Dimensions.h10),
              //phone
              AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.phone,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.f20,
                  size: Dimensions.f26 * 1.3,
                ),
                bigText: BigText(
                  text: 'Videos',
                  size: Dimensions.f20,
                ),
              ),
              SizedBox(height: Dimensions.h10),
              //email
              AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.email,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.f20,
                  size: Dimensions.f26 * 1.3,
                ),
                bigText: BigText(
                  text: 'Photos',
                  size: Dimensions.f20,
                ),
              ),
              SizedBox(height: Dimensions.h10),
              //address
              AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.location_on,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.f20,
                  size: Dimensions.f26 * 1.3,
                ),
                bigText: BigText(
                  text: 'Appoitments',
                  size: Dimensions.f20,
                ),
              ),
              SizedBox(height: Dimensions.h10),
              //message
              AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.message_outlined,
                  backgroundColor: Colors.redAccent,
                  iconColor: Colors.white,
                  iconSize: Dimensions.f20,
                  size: Dimensions.f26 * 1.3,
                ),
                bigText: BigText(
                  text: 'Message',
                  size: Dimensions.f20,
                ),
              ),
              SizedBox(height: Dimensions.h10),
              InkWell(
                onTap: () {
                  // if (Get.find<AuthController>()
                  //     .userLoggedIn()) {
                  //   Get.find<AuthController>()
                  //       .clearSharedData();
                  //   Get.find<CartController>().clear();
                  //   Get.find<CartController>()
                  //       .clearCartHistory();

                  //   Get.offNamed(RouteHelper.getSignInPage());
                  // } else {
                  //   print('You Looged out');
                  // }
                },
                child: AccountWidget(
                  appIcon: AppIcon(
                    icon: Icons.logout_outlined,
                    backgroundColor: Colors.redAccent,
                    iconColor: Colors.white,
                    iconSize: Dimensions.f20,
                    size: Dimensions.f26 * 1.3,
                  ),
                  bigText: BigText(
                    text: 'Logout',
                    size: Dimensions.f20,
                  ),
                ),
              ),
              SizedBox(height: Dimensions.h10)
            ],
          ),
        ))
      ],
    ));
  }
}
