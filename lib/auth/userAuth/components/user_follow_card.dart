import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/models/user_follow_model.dart';

import '../../../data/controllers/user_follow_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import '../../../widgets/small_text_widget.dart';

class UserFollowCard extends StatelessWidget {
  const UserFollowCard({
    Key? key,
    this.name = '',
    this.desc = '',
    this.image = 'assets/images/profile.jpg',
    this.onPressed,
    required this.mentor,
  }) : super(key: key);

  final UserFollowModel mentor;
  final String? name;
  final String? desc;
  final String? image;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: Dimensions.h15 * 9,
        padding: EdgeInsets.only(bottom: Dimensions.w10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image!))),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin:
                    EdgeInsets.only(left: Dimensions.w10, top: Dimensions.h20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: BigText(
                        text: name!,
                        size: Dimensions.f20,
                        maxline: 1,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SmallText(
                        text: desc!,
                        maxLines: 2,
                        size: Dimensions.f16,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        child: ElevatedButton(
                            onPressed: onPressed,
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.mainColor,
                            ),
                            child: GetBuilder<UserFollowController>(
                                builder: (userFollowController) {
                              return BigText(
                                text: userFollowController.follwedMentor
                                        .contains(mentor)
                                    ? 'Following'
                                    : 'Follow',
                                color: Colors.white,
                                size: Dimensions.f20,
                              );
                            })),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
