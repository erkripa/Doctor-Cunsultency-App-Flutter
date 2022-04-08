import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/global/font_name.dart';
import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';

import '../../routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  Future<void> _loadResources() async {
    // Get.find<PopularProductController>().getPopularProductList();
    // Get.find<RecommendedProductController>().getRecommendeProductList();
  }

  @override
  void initState() {
    super.initState();
    _loadResources();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);

    Timer(const Duration(seconds: 3), () {
      Get.toNamed(RouteHelper.getInitial());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _controller,
            child: Container(
                color: AppColors.mainColor,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: Dimensions.r15 / 1.5,
                    ),
                    RichText(
                        text: TextSpan(
                      text: ' Million Talents ',
                      style: TextStyle(
                        fontFamily: FontName.sourceSansPro,
                        color: Colors.white,
                        fontSize: Dimensions.f16 * 2,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    CircleAvatar(
                      radius: Dimensions.r15 / 1.5,
                    ),
                  ],
                )),
          ),
          SizedBox(height: Dimensions.h15),
          Text(
            'India top doctors to guide you \nto better health every day',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontName.sourceSansPro,
              height: 1.4,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
