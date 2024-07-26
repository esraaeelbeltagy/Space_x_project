import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_icons.dart';
import '../../../core/utils/app_images.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({super.key});

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
        body: GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .52,
                crossAxisSpacing: 20.w,
                mainAxisSpacing: 20.h),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(
                      color: AppColors.deepGrey,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColors.blue,
                        ),
                        height: 200.h,
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Robert \nBanking ',
                            style: TextStyles.font16White700w,
                          ),
                        ),
                        Image.asset(
                          AppIcons.favIcon,
                          width: 35.w,
                          height: 35.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 16.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'active',
                          style: TextStyles.font12White700w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.lanchSvg),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '1 Lanch',
                          style: TextStyles.font12White700w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.agyncySvg),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'NASA',
                          style: TextStyles.font12White700w,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
