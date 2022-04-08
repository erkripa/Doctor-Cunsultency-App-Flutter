import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import '../../../widgets/small_text_widget.dart';

class KnowMoreCard extends StatelessWidget {
  const KnowMoreCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Dimensions.h15 * 10,
          width: double.maxFinite,
          margin: EdgeInsets.all(Dimensions.w20),
          padding: EdgeInsets.all(Dimensions.w15),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(Dimensions.r20),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigText(
                      text: 'Million Talents Care',
                      color: Colors.white,
                      size: Dimensions.f20,
                    ),
                    BigText(
                      text: 'You are in safe hands',
                      color: Colors.white.withOpacity(0.8),
                      size: Dimensions.f16,
                    ),
                    SmallText(
                      text: 'Chose the experts in end to end surgical care',
                      color: Colors.white.withOpacity(0.6),
                      size: Dimensions.f12,
                    ),
                    SizedBox(height: Dimensions.h10),
                    InkWell(
                      onTap: () {
                        print('know more tapped');
                      },
                      child: Container(
                        height: Dimensions.h30,
                        width: Dimensions.h10 * 10,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.r20 / 2),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white,
                            )),
                        child: const SmallText(
                          text: 'Know more',
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: Dimensions.w20),
            ],
          ),
        ),
        Positioned(
          right: Dimensions.w10,
          bottom: Dimensions.h20,
          top: 0,
          child: Container(child: Image.asset('assets/images/person.png')),
        )
      ],
    );
  }
}
