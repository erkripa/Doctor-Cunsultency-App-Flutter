import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/global/my_appbar.dart';
import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';
import 'package:selfe/widgets/custom_text_field_widget.dart';

import '../../models/specialist_model.dart';
import 'components/specialist_card.dart';

class SpecialistSearchPage extends StatefulWidget {
  const SpecialistSearchPage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<SpecialistSearchPage> createState() => _SpecialistSearchPageState();
}

class _SpecialistSearchPageState extends State<SpecialistSearchPage> {

var searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    searchController.text = widget.title;
  }
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
            SizedBox(height: Dimensions.h10),
            CustomTextField(
              textController: searchController,
              hintText: 'Search Symtoms / Specialist',
              icon: Icons.search,
              iconColor: Colors.grey[500],
            ),
            //Scrollable sections

            SizedBox(height: Dimensions.h10),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: specilistModelList.length,
                itemBuilder: (context, index) {
                  return SpecialistCard(
                    image: specilistModelList[index].image,
                    name: specilistModelList[index].name,
                    ctegory: specilistModelList[index].ctegory,
                    experience: specilistModelList[index].experience,
                    likes: specilistModelList[index].likes,
                    stories: specilistModelList[index].stories,
                    location: specilistModelList[index].location,
                    hospitalName: specilistModelList[index].hospitalName,
                    fees: specilistModelList[index].fees,
                    availableTime: specilistModelList[index].availableTime,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
