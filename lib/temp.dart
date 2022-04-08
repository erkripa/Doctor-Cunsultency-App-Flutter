import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/auth/userAuth/user_signup_page.dart';
import 'package:selfe/data/controllers/auth_controller.dart';

class TempPage extends StatelessWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.find<AuthController>().getUserToken().toString());
    return Scaffold(
      body: Center(
          child: InkWell(
              onTap: () {
                Get.find<AuthController>().logout();
                Get.to(UserSignupPage());
              },
              child: Text('Log Out'))),
    );
  }
}
