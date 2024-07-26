import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/text_styles.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/continue_button.dart';

class AddProfilePic extends StatelessWidget {
  const AddProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.addYourProfilePicture,
                style: TextStyles.font34Whitew500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.youCanChangeYourPictureAtAnytime,
                style: TextStyles.textStyleGray14w500,
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              height: 135.h,
              width: 135.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.deepGrey,
                border: Border.all(color: AppColors.grey, width: .1),
              ),
              child: ShaderMask(
                shaderCallback: (Rect rect) {
                  return const LinearGradient(
                    colors: [
                      AppColors.loginTextGradientBlue,
                      AppColors.loginTextGradientPurple
                    ],
                    stops: [0.9, 0.9],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(rect);
                },
                child: Icon(
                  Icons.person,
                  size: 80.sp,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.addPicture, style: TextStyles.textStyle12400),
         
                SizedBox(
                  width: 5.w,
                ),

                Icon(
                  Icons.add_a_photo_outlined,
                  color: AppColors.grey,
                  size: 15.sp,
                ),
               
              ],
            ),
             const Spacer(),
                CustomGradientButton(
                  onPressed: () {},
                )
          ]),
        ),
      ),
    );
  }
}
