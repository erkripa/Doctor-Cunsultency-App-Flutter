import 'package:flutter/material.dart';
import 'package:selfe/utils/colors.dart';
import '../../../../utils/dimension.dart';
import '../../../widgets/big_text_widget.dart';
import '../../../widgets/expanded_rich_text_widget.dart';
import '../../../../widgets/icon_and_text_widget.dart';
import '../../../widgets/small_text_widget.dart';

class SpecialistCard extends StatelessWidget {
  const SpecialistCard({
    Key? key,
    this.image,
    this.name,
    this.ctegory,
    this.experience,
    this.likes,
    this.stories,
    this.location,
    this.hospitalName,
    this.fees,
    this.availableTime,
  }) : super(key: key);

  final String? image;
  final String? name;
  final String? ctegory;
  final int? experience;
  final int? likes;
  final int? stories;
  final String? location;
  final String? hospitalName;
  final int? fees;
  final String? availableTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      margin: EdgeInsets.only(bottom: Dimensions.h10),
      child: Column(
        children: [
          ////
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: Dimensions.w10 * 5,
                      backgroundImage: AssetImage(image!),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BigText(
                          text: name!,
                          size: Dimensions.f20,
                        ),
                        SmallText(
                          text: ctegory!,
                          size: Dimensions.f14,
                        ),
                        SmallText(
                          text: experience.toString() +
                              ' years experience overall',
                          size: Dimensions.f14,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: IconAndTextWidget(
                                icon: Icons.thumb_up,
                                text: '$likes %',
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: IconAndTextWidget(
                                icon: Icons.message,
                                text: '$stories Patient Stories',
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ////
          Divider(
            height: 1,
            thickness: 0.3,
            color: AppColors.creamColor,
          ),
          ////
          Expanded(
              child: Container(
            padding: EdgeInsets.all(Dimensions.w10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                ExpandedRichText(
                  firstTitle: location! + ' : ',
                  secondTitle: hospitalName!,
                ),
                SizedBox(height: Dimensions.h10 / 2),
                //
                ExpandedRichText(
                  firstTitle: '₹ $fees ',
                  secondTitle: 'Consulatation Fees ',
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: 'NEXT AVAILABLE AT',
                          color: Colors.green,
                          size: Dimensions.f16,
                        ),
                        SizedBox(height: Dimensions.h10 / 3),
                        Row(
                          children: [
                            Icon(
                              Icons.home_outlined,
                              color: Colors.blueGrey[400],
                            ),
                            SizedBox(width: Dimensions.w10),
                            SmallText(
                              text: availableTime!,
                              size: Dimensions.f14,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: Dimensions.w20),
                    Expanded(
                      child: SizedBox(
                        height: Dimensions.h45,
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.btnColor,
                          ),
                          child: BigText(
                            text: 'Book Appointment ',
                            color: Colors.white,
                            size: Dimensions.f16,
                            maxline: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
