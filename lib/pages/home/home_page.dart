import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:selfe/pages/home/components/super_category.dart';
import 'package:selfe/pages/home/components/slides.dart';
import 'package:selfe/utils/colors.dart';
import 'package:selfe/utils/dimension.dart';

import 'components/my_drawer.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'components/know_more_card.dart';
import 'components/nav.dart';
import 'components/offer_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _advancedDrawerController = AdvancedDrawerController();

  Future<void> _loadResources() async {
    //load new data when the on refresh is pulled up
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: AppColors.creamColor,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      childDecoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Dimensions.r20)),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            Header(
              onPressed: _handleMenuButtonPressed,
              advancedDrawerController: _advancedDrawerController,
            ),

            Expanded(
                child: RefreshIndicator(
              backgroundColor: Colors.white,
              color: AppColors.mainColor,
              onRefresh: _loadResources,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    //know more card
                    KnowMoreCard(),

                    //Offer Section
                    OfferSection(),

                    //Slides
                    OfferSlide(),

                    //Category
                    SuperCategory(),

                    //Navbar
                    MyNav(),

                    //footer
                    Footer()
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
