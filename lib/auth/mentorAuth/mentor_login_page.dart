import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:selfe/auth/mentorAuth/mentor_signup_page.dart';

import '../../global/custom_snakbar.dart';
import '../../global/font_name.dart';
import '../../utils/colors.dart';
import '../../utils/dimension.dart';
import '../../widgets/big_text_widget.dart';
import '../../widgets/custom_text_field_widget.dart';

class MentorLoginPage extends StatelessWidget {
  const MentorLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    //registartion
    void _login() {
      var email = emailController.text.trim();
      var password = passwordController.text.trim();

      if (email.isEmpty) {
        showCustomSnackBar('Type your email', title: 'Email');
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar('Type your valid email', title: 'Valid Email');
      } else if (password.isEmpty) {
        showCustomSnackBar('Type your password', title: 'Password');
      } else if (password.length < 6) {
        showCustomSnackBar('password should be greater than 6',
            title: 'Password length');
      } else {
        // authController.login(email, password).then((status) {
        //   if (status.isSuccess) {
        //     Get.toNamed(RouteHelper.getInitial());
        //   } else {
        //     showCustomSnackBar(status.message);
        //   }
        // });
        // print(signUpBody);
      }
    }

    return Scaffold(
      backgroundColor: AppColors.imageBackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.screenHeight * 0.05),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: Dimensions.h220 / 5,
                margin:
                    EdgeInsets.only(left: Dimensions.w10, top: Dimensions.h10),
                child: Image.asset('assets/images/logo.png'),
              ),
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
            const BigText(text: 'Mentor Login'),
            SizedBox(height: Dimensions.h20),
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

            Padding(
              padding:
                  EdgeInsets.only(top: Dimensions.h10, right: Dimensions.w30),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: 'Sign in into your account',
                      style: TextStyle(
                        fontFamily: FontName.sourceSansPro,
                        fontSize: Dimensions.f20,
                        color: AppColors.textColor,
                      )),
                ),
              ),
            ),
            SizedBox(height: Dimensions.h20),

            SizedBox(
              height: Dimensions.h20 * 2.7,
              width: Dimensions.screenWidth / 1.3,
              child: ElevatedButton(
                onPressed: () {
                  // _login(_authController);
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.mainColor,
                  shape: const StadiumBorder(),
                ),
                child: BigText(
                  text: 'Login',
                  color: Colors.white,
                  size: Dimensions.f20,
                ),
              ),
            ),
            SizedBox(height: Dimensions.h20),
            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(
                    fontFamily: FontName.sourceSansPro,
                    fontSize: Dimensions.f20,
                    color: AppColors.textColor,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const MentorSignUpPage(),
                            transition: Transition.rightToLeftWithFade),
                      text: ' Create',
                      style: TextStyle(
                        fontFamily: FontName.sourceSansPro,
                        fontSize: Dimensions.f20,
                        color: AppColors.mainBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
