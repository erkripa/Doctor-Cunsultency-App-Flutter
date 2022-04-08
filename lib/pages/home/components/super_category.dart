import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/models/sc_model.dart';
import 'package:selfe/pages/category/see_all_scategory_page.dart';
import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';
import 'package:selfe/widgets/big_text_widget.dart';
import 'sc_card.dart';

class SuperCategory extends StatelessWidget {
  const SuperCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.w10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BigText(text: 'Category'),
              TextButton(
                onPressed: () => Get.to(() => const SeeAllSuperCategory()),
                child: Padding(
                  padding: EdgeInsets.only(top: 8, right: Dimensions.w10),
                  child: BigText(
                    text: 'See all',
                    size: Dimensions.f16,
                    color: AppColors.mainColor,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: GridView.count(
              crossAxisCount: Dimensions.screenHeight <= 640 ? 4 : 3,
              childAspectRatio: (1 / 1.6),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                  scModelList.length >= 9 ? 9 : scModelList.length, (index) {
                return Padding(
                  padding: EdgeInsets.all(Dimensions.w10),
                  child: SCCard(
                    imagPath: scModelList[index].imagPath!,
                    title: scModelList[index].title!,
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
