import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

import 'widgets/category_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              children: [
                const HomeAppBar(),
                SizedBox(
                  height: 10.h,
                ),
                const HomeBody(),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            // Ships Category
            CategoryContainer(
              onTap: () {
                // Navigator.push(
                //   context,
                //   LeftSlideTransition(
                //     page: const ShipsBlocProvider(),
                //   ),
                // );
              },
              height: 370.h,
              width: 160.w,
              backgroundImg: AppImages.spaceShipsCategory,
              title: AppStrings.spaceShips,
              description: AppStrings
                  .knowAboutActiveShipsTheirDescriptionCompany,
              tag: 'ships',
            ),
            SizedBox(
              height: 15.h,
            ),
            // Rockets Category
            CategoryContainer(
              onTap: () {
                // Navigator.push(
                //   context,
                //   LeftSlideTransition(
                //     page: const RocketsBlocProvider(),
                //   ),
                // );
              },
              height: 250.h,
              width: 160.w,
              backgroundImg: AppImages.rocketsCategory,
              title: AppStrings.rockets,
              description: AppStrings
                  .knowAboutActiveRocketsTheirDescriptionCompany,
              tag: 'Rockets',
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            // Launches Category
            CategoryContainer(
              height: 200.h,
              width: 160.w,
              backgroundImg: AppImages.launchesCategory,
              title: AppStrings.launches,
              description:
                  AppStrings.knowAboutTheLaunchesNameStateDetails,
              onTap: () {
                // Navigator.push(
                //   context,
                //   LeftSlideTransition(
                //       page: const LauchesBlocProvider()),
                // );
              },
              tag: AppStrings.launches,
            ),
            SizedBox(
              height: 15.h,
            ),
            // Crew Category
            CategoryContainer(
              onTap: () {
                // Navigator.push(
                //   context,
                //   LeftSlideTransition(page: const CrewBlocProvider()),
                // );
              },
              height: 200.h,
              width: 160.w,
              backgroundImg: AppImages.crewCategory,
              title: AppStrings.crew,
              description:
                  AppStrings.knowAboutTheLaunchesNameStateDetails,
              tag: AppStrings.crew,
            ),
            SizedBox(
              height: 15.h,
            ),
            CategoryContainer(
              height: 200.h,
              width: 160.w,
              backgroundImg: AppImages.aboutSpaceX,
              title: AppStrings.aboutSpaceX,
              description: AppStrings.knowAllAboutSpaceXDetails,
              onTap: () {
                // Navigator.push(
                //   context,
                //   LeftSlideTransition(
                //       page: const AboutCompanyBlocProvider()),
                // );
              },
              tag: AppStrings.aboutSpaceX,
            ),
          ],
        ),
      ],
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: [
          Container(
            height: 50.h,
            width: 50.w,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(AppImages.esraa),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.welcomeBack,
                  style: TextStyles.textStyle14400,
                ),
                Text(
                  'Esraa',
                  style: TextStyles.font20White700w,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

