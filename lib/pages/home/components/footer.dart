
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import '../../../widgets/small_text_widget.dart';
import 'f_small_card.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.creamColor,
          margin: EdgeInsets.only(top: Dimensions.h30),
          padding: EdgeInsets.only(
              left: Dimensions.w15, top: Dimensions.h15),
          height: Dimensions.h45 * 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(
                text:
                    'Our community of doctors and patient drive us to create technologies for better and affordable healthcare',
                size: Dimensions.f20,
                height: 1.4,
                color: AppColors.textColor,
              ),
              SizedBox(height: Dimensions.h20),
              Row(
                children: [
                  const FSmallCard(
                    icon: Icons.person,
                    smallText: 'Our USers',
                    bigText: '30 Crores',
                  ),
                  SizedBox(width: Dimensions.w30 * 2),
                  const FSmallCard(
                    icon: Icons.shopping_bag_outlined,
                    smallText: 'Doctors',
                    bigText: '1 Lakh',
                  ),
                ],
              ),
              SizedBox(height: Dimensions.h25),
              Row(
                children: [
                  const FSmallCard(
                    icon: Icons.local_hospital,
                    smallText: 'Hospital',
                    bigText: '20,000',
                  ),
                  SizedBox(width: Dimensions.w30 * 3),
                  const FSmallCard(
                    icon: Icons.message_outlined,
                    smallText: 'User Stories',
                    bigText: '40 Lakh',
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: Dimensions.h220,
          width: double.maxFinite,
          color: AppColors.mainColor,
          padding: EdgeInsets.all(Dimensions.w15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BigText(
                text: 'Million Talents',
                color: Colors.white,
              ),
              SizedBox(height: Dimensions.h10),
              SmallText(
                text:
                    'Our vision is to help mankind live healthier , longer lives, by making quality healthcare accesible affordable and convenient.',
                color: AppColors.creamColor,
                height: 1.4,
                size: Dimensions.f20,
              ),
              SizedBox(height: Dimensions.h20),
              SmallText(
                text: 'Made by Million Talents @ Bangalore.',
                color: AppColors.creamColor.withOpacity(0.8),
                size: Dimensions.f16,
              )
            ],
          ),
        )
      ],
    );
  }
}
