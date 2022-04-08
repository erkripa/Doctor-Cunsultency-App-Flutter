import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:selfe/widgets/big_text_widget.dart';
import 'package:selfe/widgets/small_text_widget.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';

class OfferSlide extends StatefulWidget {
  const OfferSlide({Key? key}) : super(key: key);

  @override
  State<OfferSlide> createState() => _OfferSlideState();
}

class _OfferSlideState extends State<OfferSlide> {
  PageController pageController = PageController(viewportFraction: 0.8);
  var _currentPageValue = 0.0;
  double height = Dimensions.h220;
  double height1 = Dimensions.h220 - Dimensions.h20;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      margin: EdgeInsets.only(top: Dimensions.h20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: Dimensions.w10, top: Dimensions.w10),
            child: BigText(
              text: 'In the SpotLight',
              color: Colors.white,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: Dimensions.w10, top: Dimensions.w10 / 2),
            child: SmallText(
              text: 'Explore deals,offers ,health updates,and more',
              color: Colors.white,
              size: Dimensions.f16,
            ),
          ),
          Container(
            height: height1,
            child: PageView.builder(
                controller: pageController,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return _buildItem(
                    index,
                  );
                }),
          ),
          Center(
            child: DotsIndicator(
              dotsCount: 6,
              position: _currentPageValue,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int index) {
    return Stack(children: [
      InkWell(
        onTap: () {},
        child: Container(
          height: height,
          margin: EdgeInsets.all(Dimensions.h10),
          decoration: BoxDecoration(
            color: index.isEven
                ? AppColors.imageBackColor3
                : AppColors.imageBackColor,
            borderRadius: BorderRadius.circular(Dimensions.w10),
            // image: const DecorationImage(
            //   fit: BoxFit.cover,
            //   image:  AssetImage('assets/images/doctor.png')
            // ),
          ),
        ),
      ),
    ]);
  }
}
