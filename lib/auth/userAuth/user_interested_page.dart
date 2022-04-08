import 'package:flutter/material.dart';

import 'package:filter_list/filter_list.dart';
import 'package:get/get.dart';
import 'package:selfe/auth/userAuth/user_follow_page.dart';
import 'package:selfe/utils/dimension.dart';
import 'package:selfe/widgets/app_icon_widget.dart';
import 'package:selfe/widgets/big_text_widget.dart';

class UserInterestedPage extends StatefulWidget {
  const UserInterestedPage({Key? key}) : super(key: key);

  @override
  State<UserInterestedPage> createState() => _UserInterestedPageState();
}

class _UserInterestedPageState extends State<UserInterestedPage> {
  List<Tags>? selectedTagsList = [];

  @override
  Widget build(BuildContext context) {
    // for (var item in selectedUserList!) {
    //   print(item.name);
    // }
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: Dimensions.w10, top: Dimensions.h10),
              child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const AppIcon(icon: Icons.arrow_back_ios)),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: Dimensions.w30, top: Dimensions.h10),
              child: const BigText(
                text: 'What are you interested in?',
              ),
            ),
            SizedBox(height: Dimensions.h10),
            Expanded(
              child: FilterListWidget<Tags>(
                themeData: FilterListThemeData(context),
                hideSelectedTextCount: true,
                listData: TagsList,
                selectedListData: selectedTagsList,
                onApplyButtonClick: (list) {
                  setState(() {
                    selectedTagsList = List.from(list!);
                  });
                  Get.to(() => const UserFollowPage());
                },
                choiceChipLabel: (item) {
                  return item!.name;
                },
                validateSelectedItem: (list, val) {
                  return list!.contains(val);
                },
                onItemSearch: (Tags, query) {
                  return Tags.name!.toLowerCase().contains(query.toLowerCase());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tags {
  final String? name;

  Tags({this.name});
}

List<Tags> TagsList = [
  Tags(name: "Skin Care Consultant "),
  Tags(name: "Beauty Consultant "),
  Tags(name: "Bridal Makeup Consultant "),
  Tags(name: "Makeup Consultant "),
  //
  Tags(name: "Child Care Nutrition Consultant "),
  Tags(name: "Healthy Food & Supplements Consultant "),
  Tags(name: "Nutrition Consultant  "),
  Tags(name: "Weight Loss - Diet Consultant "),
  //
  Tags(name: "Scholarship Consultant  "),
  Tags(name: "Academic Counsellor "),
  Tags(name: "Accountancy Professor "),
  Tags(name: "ASSISTANTPROFESSOR "),

  //
  Tags(name: "Biology Teacher "),
  Tags(name: "Business Studies Professor "),
  Tags(name: "Chancellor "),
  Tags(name: "Chemistry "),
  Tags(name: "Civics Teacher "),
  Tags(name: "DEAN "),
  Tags(name: "Economics "),
  Tags(name: "Education Consultant "),
  Tags(name: " Geography Teacher "),
  Tags(name: "Higher Education Consultant "),
  Tags(name: "History Teacher "),
  Tags(name: "I need a college admission Consultant "),
  Tags(name: "Macro-Economics Professor "),
  Tags(name: "Mathematics Teacher "),
  Tags(name: "Physics Teacher "),
  Tags(name: "Principal "),
  Tags(name: "Senior Admission Counselor "),
  Tags(name: "Spoken English Trainer "),
  Tags(name: "Vice Principal "),
  //
  Tags(name: "Fashion Consultant "),
  Tags(name: "Fashion Designing Consultant "),
  Tags(name: "Bridal Wear Consultant "),
  Tags(name: "Part Wear Designing Consultant "),
  //
  Tags(name: "Fitness Consultant "),
  Tags(name: "Massage Therapist  "),
  Tags(name: "Meditation Consultant "),
  Tags(name: "Personal Trainer "),
  Tags(name: "Yoga Aerobic Instructor  "),
  Tags(name: "Yoga Consultant "),
  //
];
