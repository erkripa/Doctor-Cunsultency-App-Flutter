import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfe/routes/routes.dart';

import '../../global/my_appbar.dart';
import '../../utils/dimension.dart';
import '../../models/sc_model.dart';
import '../home/components/sc_card.dart';

class SeeAllSuperCategory extends StatelessWidget {
  const SeeAllSuperCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyAppBar(
            text: 'All Category',
            iconColor: Colors.white,
            onPressed: () => Get.toNamed(RouteHelper.getInitial()),
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
                  children: List.generate(scModelList.length, (index) {
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
            ),
          ),
        ],
      ),
    );
  }
}
