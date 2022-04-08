import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:selfe/auth/userAuth/user_interested_page.dart';
import 'package:selfe/data/controllers/auth_controller.dart';

import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';
import 'package:selfe/widgets/big_text_widget.dart';
import 'package:selfe/widgets/custom_text_field_widget.dart';

import '../../data/controllers/image_picker_controller.dart';
import '../../widgets/app_icon_widget.dart';
import '../../widgets/long_button_widget.dart';
import '../../widgets/small_text_widget.dart';

class UserUploadPhoto extends StatefulWidget {
  const UserUploadPhoto({Key? key}) : super(key: key);

  @override
  State<UserUploadPhoto> createState() => _UserUploadPhotoState();
}

class _UserUploadPhotoState extends State<UserUploadPhoto> {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  var bioController = TextEditingController();
  var usernameController = TextEditingController();

  Map<String, bool> values = {
    'English': false,
    'Hindi': false,
    'Tamil': false,
    'Kanada': false,
    'Malyalam': false,
    'Bengali': false,
  };
  var tempList = [];
  List<String> listOfLanguages = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tempList.add(key);
        if (!listOfLanguages.contains(key)) {
          listOfLanguages.add(key);
        }
      } else {
        listOfLanguages.remove(key);
      }
    });
    tempList.clear();
  }

  @override
  Widget build(BuildContext context) {
    ImagePickerController imagePickerController =
        Get.put(ImagePickerController());
    // print(listOfLanguages);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Dimensions.h45),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.w20),
              child: BigText(
                text: 'Upload your Image',
                color: AppColors.textColor1,
                size: Dimensions.f20,
              ),
            ),
            SizedBox(height: Dimensions.h20),
            Center(
              child: Stack(
                children: [
                  Obx((() => imagePickerController.isSignupPicSet.value
                      ? CircleAvatar(
                          maxRadius: Dimensions.h10 * 8,
                          backgroundImage: imagePickerController
                                  .isSignupPicSet.value
                              ? FileImage(File(imagePickerController
                                  .signupPicPath.value)) as ImageProvider
                              : const AssetImage('assets/images/profile.jpg'),
                        )
                      : AppIcon(
                          icon: Icons.account_circle,
                          backgroundColor: AppColors.whiteWithOpecity,
                          iconColor: Colors.white,
                          iconSize: Dimensions.f26 * 4,
                          size: Dimensions.h15 * 8,
                        ))),
                  Positioned(
                    bottom: 0,
                    top: Dimensions.h10 * 7,
                    right: Dimensions.w20,
                    child: InkWell(
                      onTap: () {
                        Get.bottomSheet(boottomSheet());
                      },
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: Dimensions.w30,
                        color: AppColors.mainColor,
                        semanticLabel: 'Upload Photo',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.h20),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.w20),
              child: BigText(
                text: 'Describe yourself',
                color: AppColors.textColor1,
                size: Dimensions.f20,
              ),
            ),
            SizedBox(height: Dimensions.h20),
            CustomTextField(
              textController: bioController,
              hintText: 'Your Bio..',
              icon: Icons.info,
              maxLine: 3,
            ),
            SizedBox(height: Dimensions.h20),
            CustomTextField(
              textController: bioController,
              hintText: 'username',
              icon: Icons.info,
              maxLine: 3,
            ),
            SizedBox(height: Dimensions.h20),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.w20),
              child: BigText(
                text: 'Which languages do you speak?',
                color: AppColors.textColor1,
                size: Dimensions.f20,
              ),
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: values.keys.map((String key) {
                return ListTile(
                  title: BigText(
                    text: key,
                    size: Dimensions.f20,
                    color: AppColors.textColor,
                  ),
                  trailing: Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: values[key],
                      activeColor: AppColors.mainColor,
                      checkColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.r15 / 3)),
                      onChanged: (bool? value) {
                        setState(() {
                          values[key] = value!;
                        });
                        getCheckboxItems();
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: Dimensions.h15),
            LongButton(
              text: 'Next',
              onPressed: () {
                Get.find<AuthController>().uploadUserData(bioController.text,
                    listOfLanguages, usernameController.text, pickedFile!);
                // Get.to(() => const UserInterestedPage());
              },
            ),
            SizedBox(height: Dimensions.h15),
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

    Get.find<ImagePickerController>()
        .setProfilePicWhileSignup(pickedFile!.path);

    Get.back();
  }
}
