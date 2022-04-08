import 'package:flutter/material.dart';


import '../../../../models/nav_model.dart';
import '../../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import 'mynav_card.dart';

class MyNav extends StatelessWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: Dimensions.w15, bottom: Dimensions.h10),
          child: const BigText(text: "Explore more"),
        ),
        Container(
          height: Dimensions.h10 * 13,
          margin: EdgeInsets.only(
            left: Dimensions.w20,
            right: Dimensions.w20,
            top: Dimensions.h10,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              navModeList.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: Dimensions.w10),
                child: MyNavCard(
                  imagePath: navModeList[index].image,
                  title: navModeList[index].title,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
