import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/models/mentor_model.dart';

import '../../../global/my_appbar.dart';
import '../../../utils/dimension.dart';
import 'components/mentor_card.dart';

class MentorsPage extends StatelessWidget {
  const MentorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyAppBar(
            text: 'Mentors',
            iconColor: Colors.white,
            onPressed: () => Get.back(),
          ),
          SizedBox(height: Dimensions.h10),
          Expanded(
            child: Container(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                removeBottom: true,
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: (1 / 1.6),
                  children: List.generate(mentorModelist.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MentorCard(
                        imagPath: mentorModelist[index].image,
                        title: mentorModelist[index].title,
                        desc: mentorModelist[index].desc,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
