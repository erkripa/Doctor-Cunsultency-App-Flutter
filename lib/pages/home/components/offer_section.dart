import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/pages/home/components/small_offer_card.dart';
import 'package:selfe/pages/search/specialist_category_page.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimension.dart';
import '../../../models/small_offers_model.dart';
import '../../../widgets/big_text_widget.dart';
import 'offer_card.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: Dimensions.w15),
          child: const BigText(text: "Our Offerings"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: OfferCard(
                onTap: () {
                  Get.to(() => SpecialistCategoryPage());
                },
                imagePath: 'assets/images/doctor.png',
                title: 'Find Doctor Near You',
                desc: 'Confirmed appointments',
              ),
            ),
            Expanded(
              child: OfferCard(
                imagePath: 'assets/images/doctor1.png',
                title: 'Instant Video Consultation',
                desc: 'Connect within 60 secs',
                bgColor: AppColors.imageBackColor2,
              ),
            ),
          ],
        ),
        Container(
          height: Dimensions.h10 * 13,
          margin: EdgeInsets.only(
            left: Dimensions.w20,
            right: Dimensions.w20,
            top: Dimensions.h20,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              smallOferModelList.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: Dimensions.w10),
                child: SmallOfferCard(
                  imagePath: smallOferModelList[index].image,
                  title: smallOferModelList[index].title,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
