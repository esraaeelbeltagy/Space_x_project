import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    
    return Material(
      borderRadius: BorderRadius.circular(15.r),
      color: AppColors.lightBlack,
      child: InkWell(
        borderRadius: BorderRadius.circular(15.r),
        onTap: onTap,
        child: Container(
          height: 70.h,
          decoration: BoxDecoration(
              color: AppColors.lightBlack,
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: AppColors.loginTextGradientBlue,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyles.font14White700w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Icon(
                icon,
                size: 15.sp,
                color: AppColors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
