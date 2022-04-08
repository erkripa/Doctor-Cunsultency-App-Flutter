import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:selfe/auth/mentorAuth/mentor_login_page.dart';
import 'package:selfe/auth/mentorAuth/mentor_signup_page.dart';
import 'package:selfe/auth/userAuth/user_signup_page.dart';
import '../../../auth/userAuth/user_login_page.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import 'small_btn.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    this.onPressed,
    required this.advancedDrawerController,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final AdvancedDrawerController advancedDrawerController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: Dimensions.w10),
          height: Dimensions.h45 * 2.8,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
          ),
          child: SafeArea(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: onPressed,
                            child: ValueListenableBuilder<AdvancedDrawerValue>(
                              valueListenable: advancedDrawerController,
                              builder: (_, value, __) {
                                return AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 250),
                                  child: Icon(
                                    value.visible ? Icons.clear : Icons.menu,
                                    color: value.visible
                                        ? AppColors.mainColor
                                        : AppColors.iconColor,
                                    key: ValueKey<bool>(value.visible),
                                  ),
                                );
                              },
                            )),
                        Container(
                            margin: EdgeInsets.only(left: Dimensions.w20 * 6),
                            child: InkWell(
                              onTap: () =>
                                  Get.to(() => const MentorLoginPage()),
                              child: const SmallButton(
                                text: 'join now',
                              ),
                            )),
                        InkWell(
                          onTap: () {
                            Get.to(() => const UserLoginPage());
                          },
                          child: const SmallButton(
                            text: 'Sigin',
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.w10 / 2,
                        )
                      ]),
                  SizedBox(height: Dimensions.h10 / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(width: Dimensions.h10 / 2),
                      BigText(
                        text: 'Bangalore',
                        size: Dimensions.f16,
                      ),
                      SizedBox(width: Dimensions.h10 / 2),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
