import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/models/user_follow_model.dart';
import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';
import 'package:selfe/widgets/big_text_widget.dart';
import 'package:selfe/widgets/small_text_widget.dart';

import '../../data/controllers/user_follow_controller.dart';
import '../../widgets/app_icon_widget.dart';
import 'components/user_follow_card.dart';

class UserFollowPage extends StatelessWidget {
  const UserFollowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserFollowController userFollowController = Get.put(UserFollowController());

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
            left: Dimensions.w10 / 2,
            right: Dimensions.w10 / 2,
            top: Dimensions.h30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.w10 / 3, top: Dimensions.h10),
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const AppIcon(icon: Icons.arrow_back_ios)),
                ),
                Padding(
                  padding: EdgeInsets.all(Dimensions.w10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const BigText(
                        text: 'Suggested Follows',
                      ),
                      SmallText(
                        text: 'Lorem ipsum dolor sit amet consectetur.',
                        size: Dimensions.f16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.h10),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.w10),
              child: BigText(
                text: 'You May Interested in :',
                size: Dimensions.f20,
                color: AppColors.mainBlackColor,
              ),
            ),
            SizedBox(height: Dimensions.h10),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: userFollowModelist.length,
                itemBuilder: (context, index) {
                  return UserFollowCard(
                    mentor: userFollowModelist[index],
                    image: userFollowModelist[index].image,
                    name: userFollowModelist[index].name,
                    desc: userFollowModelist[index].desc,
                    onPressed: () {
                      // print(userFollowModelist[index]);
                      userFollowController
                          .wantsToFollow(userFollowModelist[index]);
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
