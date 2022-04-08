import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:selfe/auth/userAuth/user_signup_page.dart';
import 'package:selfe/auth/userAuth/user_upload_photo_page.dart';
import 'package:selfe/data/controllers/auth_controller.dart';
import 'package:selfe/pages/home/home_page.dart';
import 'package:selfe/routes/routes.dart';
import 'package:selfe/temp.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light),
    );
    return GetMaterialApp(
      title: 'Selfe',
      theme: Theme.of(context).copyWith(
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(systemOverlayStyle: SystemUiOverlayStyle.dark),
      ),
      debugShowCheckedModeBanner: false,
      home: UserUploadPhoto(),
      // initialRoute: RouteHelper.getSplash(),
      getPages: RouteHelper.routes,
    );
  }
}
