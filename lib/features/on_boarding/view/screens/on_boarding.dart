

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:space_x_gate/core/themes/app_colors.dart';

import '../../../../core/themes/text_styles.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../model/on_boarding_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(currentIndex == 0 ){
                 currentIndex  = 1 ;
          }
          setState(() {
            
          });
        },
        shape: const CircleBorder(
          side: BorderSide(
            color: AppColors.white,
            width: 1,
          ),
        ),
        backgroundColor: AppColors.black,
        child: SvgPicture.asset(
          AppImages.forwardArrows,
          height: 20.h,
          width: 20.h,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 500.h,
              child: PageView.builder(
                  onPageChanged: (index) {
                    currentIndex = index;
                    setState(() {});
                  },
                  itemCount: 2,
                  itemBuilder: (_, i) {
                    return Center(
                      child: Lottie.asset(onBoardingImages[i].image),
                    );
                  }),
            ),

            // smooth page indicator
            Center(
              child: SmoothPageIndicator(
                
                  controller: controller, // PageController
                  count: 2,
                  effect:  const ExpandingDotsEffect(
                    dotHeight: 7,
                    dotWidth: 20 , 
                    radius: 10,
                    dotColor: AppColors.grey,
                    activeDotColor: AppColors.purple
                  ), // your preferred effect
                  onDotClicked: (index) {
                    controller.animateToPage(
                      currentIndex = index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }),
            ),

            SizedBox(
              height: 30.h,
            ),
            Text(
              AppStrings.welcomeTo,
              style: TextStyles.textStyleGradient,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppStrings.spaceXGate,
              style: TextStyles.textStyle34,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppStrings.yourGuideToKnowingAllAboutSpaceXLaunches,
              style: TextStyles.textStyle12400,
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.h,
      width: currentIndex == index ? 25.w : 10.w,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == 0
            ? AppColors.maingGradientColor.single
            : AppColors.borderGrey,
      ),
    );
  }
}
