import 'package:get/get.dart';

import '../pages/home/home_page.dart';
import '../pages/splash/splash_page.dart';

class RouteHelper {
  static const String splash = '/splash';

  static const String initial = '/';

  //methods
  static String getSplash() => "$splash";
  static String getInitial() => "$initial";

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashPage()),
    GetPage(name: initial, page: () => const HomePage()),
  ];
}
