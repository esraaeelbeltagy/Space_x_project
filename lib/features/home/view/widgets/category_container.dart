import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/text_styles.dart';

class CategoryContainer extends StatelessWidget {
  final double height;
  final double width;
  final String backgroundImg;
  final String title;
  final String description;
  final void Function() onTap;
  final String tag;
  const CategoryContainer({
    super.key,
    required this.height,
    required this.width,
    required this.backgroundImg,
    required this.title,
    required this.description,
    required this.onTap,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(color: AppColors.deepGrey, width: 1.w)),
          child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (Rect rect) => const LinearGradient(
                  colors: [
                    AppColors.white,
                    AppColors.white,
                    AppColors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(rect),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image.asset(
                    height: height,
                    width: width,
                    backgroundImg,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 5.h,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: tag,
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            title,
                            style: TextStyles.font16White700w,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        description,
                        style: TextStyles.font12White700w.copyWith(
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Material(
          borderRadius:BorderRadius.circular(15.r),
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(15.r),
            onTap: onTap,
            child: SizedBox(
              height: height,
              width: width,
            ),
          ),
        ),
      ],
    );
  }
}
