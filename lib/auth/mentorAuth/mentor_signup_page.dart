import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:selfe/auth/mentorAuth/mentor_login_page.dart';
import 'package:selfe/auth/userAuth/user_login_page.dart';
import 'package:selfe/global/font_name.dart';
import 'package:selfe/pages/home/components/small_btn.dart';
import 'package:selfe/widgets/small_text_widget.dart';

import '../../global/custom_snakbar.dart';
import '../../models/sign_up_body_model.dart';
import '../../utils/colors.dart';
import '../../utils/dimension.dart';
import '../../widgets/big_text_widget.dart';
import '../../widgets/custom_text_field_widget.dart';

class MentorSignUpPage extends StatefulWidget {
  const MentorSignUpPage({Key? key}) : super(key: key);

  @override
  State<MentorSignUpPage> createState() => _MentorSignUpPageState();
}

class _MentorSignUpPageState extends State<MentorSignUpPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var fNameController = TextEditingController();
  var mNameController = TextEditingController();
  var lNameController = TextEditingController();
  var signupImages = ['t.png', 'f.png', 'g.png'];
  var _groupValue = 1;

//registartion
  void _registration() {
    String fName = fNameController.text.trim();
    String mName = mNameController.text.trim();
    String lName = lNameController.text.trim();

    var email = emailController.text.trim();
    var password = passwordController.text.trim();
    var phone = phoneController.text.trim();

    if (email.isEmpty) {
      showCustomSnackBar('Type your email', title: 'Email');
    } else if (!GetUtils.isEmail(email)) {
      showCustomSnackBar('Type your valid email', title: 'Valid Email');
    } else if (password.isEmpty) {
      showCustomSnackBar('Type your password', title: 'Password');
    } else if (password.length < 6) {
      showCustomSnackBar('password should be greater than 6',
          title: 'Password length');
    } else if (fName.isEmpty) {
      showCustomSnackBar('Type your Name', title: 'First Name');
    } else if (mName.isEmpty) {
      showCustomSnackBar('Type your Name', title: 'Middle Name');
    } else if (lName.isEmpty) {
      showCustomSnackBar('Type your Name', title: 'Last Name');
    } else if (phone.isEmpty) {
      showCustomSnackBar('typ your phone', title: 'Phone No');
    } else {
      // SignUpBody signUpBody = SignUpBody(
      //   fName: fName,
      //   mName: mName,
      //   lName: lName,
      //   email: email,
      //   phone: phone,
      //   password: password,
      // );
      // authController.registration(signUpBody).then(
      //   (status) {
      //     if (status.isSuccess) {
      //       print('Registration is succesful');
      //       Get.toNamed(RouteHelper.getSignInPage());
      //     } else {
      //       showCustomSnackBar('Could not register' + status.message);
      //     }
      //   },
      // );
      // print(signUpBody);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.imageBackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.screenHeight * 0.05),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: Dimensions.h220 / 5,
                    margin: EdgeInsets.only(
                        left: Dimensions.w10, top: Dimensions.h10),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: Dimensions.w10),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => UserLoginPage());
                    },
                    child: const SmallButton(
                      text: 'Sign In',
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: Dimensions.screenHeight * 0.25,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: AppColors.mainColor,
                  radius: 80,
                  backgroundImage: const AssetImage('assets/images/person.png'),
                ),
              ),
            ),

            SizedBox(height: Dimensions.h10),

            const BigText(text: 'Mentor Registration'),

            SizedBox(height: Dimensions.h20),
            CustomTextField(
                textController: fNameController,
                hintText: 'First Name',
                icon: Icons.person),
            SizedBox(height: Dimensions.h10),
            CustomTextField(
                textController: mNameController,
                hintText: 'Middle Name',
                icon: Icons.person),
            SizedBox(height: Dimensions.h10),
            CustomTextField(
                textController: lNameController,
                hintText: 'Last Name',
                icon: Icons.person),
            SizedBox(height: Dimensions.h10),

            //Email feild
            CustomTextField(
              textController: emailController,
              hintText: 'Email.',
              icon: Icons.email,
            ),
            SizedBox(height: Dimensions.h10),
            CustomTextField(
              textController: passwordController,
              hintText: 'Password',
              icon: Icons.password,
              isObsecure: true,
            ),
            SizedBox(height: Dimensions.h10),
            CustomTextField(
              textController: phoneController,
              hintText: 'Phone',
              icon: Icons.phone,
            ),
            SizedBox(height: Dimensions.h10),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.w15),
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = int.parse(value.toString());
                      });
                      print(_groupValue);
                    },
                  ),
                  SmallText(
                    text: 'Male',
                    size: Dimensions.f16,
                    color: AppColors.textColor,
                  ),
                  Radio(
                    value: 0,
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = int.parse(value.toString());
                      });
                      print(_groupValue);
                    },
                  ),
                  SmallText(
                    text: 'Female',
                    size: Dimensions.f16,
                    color: AppColors.textColor,
                  ),
                ],
              ),
            ),

            SizedBox(height: Dimensions.h10),
            SizedBox(
              height: Dimensions.h20 * 3,
              width: Dimensions.screenWidth / 1.3,
              child: ElevatedButton(
                onPressed: () {
                  // _registration(_authController);
                  // Get.to(() => UploadPhoto());
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.mainColor,
                  shape: const StadiumBorder(),
                ),
                child: BigText(
                  text: 'Next',
                  color: Colors.white,
                  size: Dimensions.f20,
                ),
              ),
            ),
            SizedBox(height: Dimensions.h20),
            RichText(
              text: TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => const MentorLoginPage(),
                        transition: Transition.rightToLeftWithFade),
                  text: 'Already have an account?',
                  style: TextStyle(
                    fontFamily: FontName.sourceSansPro,
                    fontSize: Dimensions.f20,
                    color: AppColors.mainBlackColor,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: Dimensions.h10),

            RichText(
              text: TextSpan(
                  text: 'sign up using one of the following methods',
                  style: TextStyle(
                    fontFamily: FontName.sourceSansPro,
                    color: AppColors.textColor,
                  )),
            ),
            SizedBox(height: Dimensions.h10),
            Wrap(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('assets/images/' + signupImages[index]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
