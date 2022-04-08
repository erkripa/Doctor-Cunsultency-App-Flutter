import 'package:get/get.dart';
import 'package:selfe/constants/app_constant.dart';
import 'package:selfe/data/api/api_client.dart';
import 'package:selfe/data/controllers/auth_controller.dart';
import 'package:selfe/data/repo/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
//storage insatnce
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

//local storage loded
  Get.lazyPut(() => sharedPreferences);

//apiClient
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstant.APP_BASE_URL, sharedPreferences: Get.find()));

//repos
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

//controller
  Get.lazyPut(() => AuthController(authRepo: Get.find()));

//
}
