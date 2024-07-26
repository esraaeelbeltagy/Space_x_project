import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_icons.dart';
import '../../../core/utils/app_images.dart';

class LanchesScreen extends StatelessWidget {
  const LanchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightBlack,
        title: Text(
          'Lanches',
          style: TextStyles.font20White700w,
        ),
        elevation: 0,
        centerTitle: false,
        leadingWidth: 30.w,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
              size: 18.sp,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomColumn(
                  totalLanches: 205,
                  totalLanchesText: "Total Lanches",
                ),
                CustomWhiteLine(),
                CustomColumn(
                  totalLanches: 181,
                  totalLanchesText: "Total Landing",
                ),
                CustomWhiteLine(),
                CustomColumn(
                  totalLanches: 24,
                  totalLanchesText: "Total Failure",
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.sp),
            width: double.infinity,
            height: 300.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: AppColors.deepGrey, width: 1.w),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    AppIcons.favIcon,
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(AppImages.moon),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2006-3-24',
                            style: TextStyles.textStyleGradient
                                .copyWith(fontSize: 15.sp),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'Flacon Sat',
                            style: TextStyles.font22White700w,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.error,
                                color: AppColors.red,
                                size: 20.sp,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Faild Lanch',
                                style: TextStyles.font12White700w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                              'Engine Faild at 33 secondes and loss of vechile',
                              style: TextStyles.font12White700w
                                  .copyWith(color: AppColors.lightGrey)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomWhiteLine extends StatelessWidget {
  const CustomWhiteLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.5.w,
      height: 75.h,
      color: AppColors.offWhite2,
    );
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    super.key,
    required this.totalLanches,
    required this.totalLanchesText,
  });
  final int totalLanches;
  final String totalLanchesText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$totalLanches',
          style: TextStyles.font34White700w,
        ),
        const SizedBox(),
        Text(
          totalLanchesText,
          style: TextStyles.font14White700w,
        ),
      ],
    );
  }
}
