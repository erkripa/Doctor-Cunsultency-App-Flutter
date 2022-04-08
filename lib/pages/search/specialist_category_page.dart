import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/global/my_appbar.dart';
import 'package:selfe/models/specialist_category_model.dart';
import 'package:selfe/pages/search/specialist_search_page.dart';
import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';
import 'package:selfe/widgets/big_text_widget.dart';
import 'package:selfe/widgets/custom_text_field_widget.dart';

import '../home/components/c_card.dart';

class SpecialistCategoryPage extends StatelessWidget {
  const SpecialistCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteWithOpecity,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            MyAppBar(
              onPressed: () {
                Get.back();
              },
              text: 'Find Your Health Concern',
              iconColor: Colors.white,
            ),
            //

            //Scrollable sections
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.w10,
                    right: Dimensions.w10,
                    top: Dimensions.h10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        textController: TextEditingController(),
                        hintText: 'Search Symtoms/ Specialist',
                        icon: Icons.search,
                        iconColor: Colors.grey[500],
                      ),
                      SizedBox(height: Dimensions.h30),

                      BigText(
                        text: 'Specialist most relevant to you',
                        size: Dimensions.f20,
                      ),
                      SizedBox(height: Dimensions.h20),

                      //
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        removeBottom: true,
                        removeLeft: true,
                        removeRight: true,
                        child: GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          childAspectRatio: (1 / 1.3),
                          children: List.generate(
                            specialistCategoryModelList.length,
                            (index) {
                              return InkWell(
                                onTap: () {
                                  // print(specialistCategoryModelList[index].title);
                                  Get.to(() => SpecialistSearchPage(
                                      title: specialistCategoryModelList[index]
                                          .title));
                                },
                                child: CCard(
                                  imagePath:
                                      specialistCategoryModelList[index].image,
                                  title:
                                      specialistCategoryModelList[index].title,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      //botton
                      SizedBox(
                        height: Dimensions.h45,
                        width: double.maxFinite,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 1,
                                color: AppColors.mainColor,
                              ),
                            ),
                            child: BigText(
                              text: 'View All Specialities ',
                              color: AppColors.mainBlackColor,
                              size: Dimensions.f16,
                              maxline: 1,
                            )),
                      ),
                      SizedBox(height: Dimensions.h30),

                      //
                      BigText(
                        text: 'All Specialities',
                        size: Dimensions.f20,
                      ),
                      SizedBox(height: Dimensions.h20),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        removeBottom: true,
                        removeLeft: true,
                        removeRight: true,
                        child: GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          childAspectRatio: (1 / 1.3),
                          children: List.generate(
                              specialistCategoryModelList.length, (index) {
                            return CCard(
                              imagePath:
                                  specialistCategoryModelList[index].image,
                              title: specialistCategoryModelList[index].title,
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
