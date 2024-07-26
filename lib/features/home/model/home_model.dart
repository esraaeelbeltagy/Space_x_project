import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

class HomeModel {
  final String image;
  final String title;
  final String description;
  final double height;
  final double width;

  HomeModel({
    required this.image,
    required this.title,
    required this.description,
    required this.height,
    required this.width,
  });
}

List<HomeModel> homeList = [
  HomeModel(
    image: AppImages.spaceShipsCategory,
    title: AppStrings.spaceShips,
    description: AppStrings.knowAboutActiveShipsTheirDescriptionCompany,
    height: 700.h, 
    width: 700.w
  ),
  HomeModel(
    image: AppImages.launchesCategory,
    title: AppStrings.launches,
    description: AppStrings.knowAboutTheLaunchesNameStateDetails,
     height: 300.h, 
    width: 500.w
  ),
  HomeModel(
    image: AppImages.rocketsCategory,
    title: AppStrings.rockets,
    description: AppStrings.knowAboutActiveRocketsTheirDescriptionCompany,
     height: 300.h, 
    width: 500.w
  ),
  HomeModel(
    image: AppImages.crewCategory,
    title: AppStrings.crew,
    description: AppStrings.knowAboutTheLaunchesNameStateDetails,
     height: 300.h, 
    width: 500.w
  ),
  HomeModel(
    image: AppImages.space,
    title: AppStrings.aboutSpaceX,
    description: AppStrings.knowAllAboutSpaceXDetails,
     height: 300.h, 
    width: 500.w
  ),
];
