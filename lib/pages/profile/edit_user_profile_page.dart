import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:selfe/widgets/custom_text_field_widget.dart';
import 'package:selfe/widgets/long_button_widget.dart';
import '../../data/controllers/image_picker_controller.dart';
import '../../utils/colors.dart';
import '../../utils/dimension.dart';
import '../../widgets/app_icon_widget.dart';
import '../../widgets/big_text_widget.dart';
import '../../widgets/small_text_widget.dart';

class EditUserProfilePage extends StatefulWidget {
  const EditUserProfilePage({Key? key}) : super(key: key);

  @override
  State<EditUserProfilePage> createState() => _EditUserProfilePageState();
}

class _EditUserProfilePageState extends State<EditUserProfilePage> {
  var fNameController = TextEditingController();
  var mNameController = TextEditingController();
  var lNameController = TextEditingController();
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    ImagePickerController imagePickerController =
        Get.put(ImagePickerController());

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: Dimensions.w10, top: Dimensions.h45),
        child: Column(
          children: [
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () => Get.back(),
                    child: const AppIcon(icon: Icons.arrow_back_ios_new)),
                Spacer(),
                Expanded(
                  child: BigText(
                    text: 'Edit Profile',
                    size: Dimensions.f20,
                  ),
                ),
                Spacer()
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: Dimensions.h30),
                  //
                  Stack(
                    children: [
                      //

                      Obx((() => imagePickerController.isProfilePiceSet.value
                          ? CircleAvatar(
                              maxRadius: Dimensions.h10 * 6,
                              backgroundImage:
                                  imagePickerController.isProfilePiceSet.value
                                      ? FileImage(File(imagePickerController
                                          .profilePicPath
                                          .value)) as ImageProvider
                                      : const AssetImage(
                                          'assets/images/profile.jpg'),
                            )
                          : AppIcon(
                              icon: Icons.account_circle,
                              backgroundColor: AppColors.whiteWithOpecity,
                              iconColor: Colors.white,
                              iconSize: Dimensions.f26 * 3,
                              size: Dimensions.h15 * 6,
                            ))),

                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            Get.bottomSheet(boottomSheet());
                          },
                          child: AppIcon(
                            icon: Icons.camera_alt,
                            iconSize: Dimensions.f26,
                            backgroundColor: Colors.white.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                      ],
                    ),
                  ),
                  //
                  SizedBox(height: Dimensions.h30),
                  CustomTextField(
                    textController: fNameController,
                    hintText: 'First name',
                    icon: Icons.account_circle_outlined,
                  ),
                  SizedBox(height: Dimensions.h10),

                  CustomTextField(
                    textController: mNameController,
                    hintText: 'Middle name',
                    icon: Icons.account_circle_outlined,
                  ),
                  SizedBox(height: Dimensions.h10),

                  CustomTextField(
                    textController: lNameController,
                    hintText: 'Last name',
                    icon: Icons.account_circle_outlined,
                  ),
                  SizedBox(height: Dimensions.h10),

                  CustomTextField(
                    textController: emailController,
                    hintText: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(height: Dimensions.h10),

                  CustomTextField(
                    textController: phoneController,
                    hintText: 'Phone no',
                    keyboardType: TextInputType.number,
                    icon: Icons.phone_android_outlined,
                  ),
                  SizedBox(height: Dimensions.h15),

                  LongButton(
                    text: 'Update',
                    onPressed: () {},
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget boottomSheet() {
    return Container(
      height: Dimensions.screenHeight * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.imageBackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            Dimensions.r15,
          ),
          topRight: Radius.circular(
            Dimensions.r15,
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: Dimensions.h10),
          BigText(
            text: 'Choose Profile Picture',
            size: Dimensions.f20,
            color: AppColors.mainBlackColor,
          ),
          SizedBox(height: Dimensions.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
                child: Column(
                  children: [
                    AppIcon(
                      icon: Icons.camera,
                      size: Dimensions.h10 * 5,
                      iconSize: Dimensions.f26,
                      iconColor: AppColors.mainColor,
                    ),
                    SizedBox(height: Dimensions.h10),
                    SmallText(
                      text: 'Camera',
                      size: Dimensions.f20,
                      color: AppColors.mainBlackColor,
                    )
                  ],
                ),
              ),
              SizedBox(width: Dimensions.w30 * 2),
              InkWell(
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
                child: Column(
                  children: [
                    AppIcon(
                      icon: Icons.image,
                      size: Dimensions.h10 * 5,
                      iconSize: Dimensions.f26,
                      iconColor: AppColors.mainColor,
                    ),
                    SizedBox(height: Dimensions.h10),
                    SmallText(
                      text: 'Gallery',
                      size: Dimensions.f20,
                      color: AppColors.mainBlackColor,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    var pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    Get.find<ImagePickerController>().setProfilePic(pickedFile!.path);
    Get.back();
  }
}
