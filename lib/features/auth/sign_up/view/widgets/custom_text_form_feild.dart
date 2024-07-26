import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/text_styles.dart';

// ignore: must_be_immutable
class CutomTextFormFeild extends StatelessWidget {
  CutomTextFormFeild({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.errorMessage,
    required this.controller,
    required this.validator,
    this.suffixIcon,
  });
  final String hintText;
  final TextInputType keyboardType;
  final String errorMessage;
  final Widget? suffixIcon;
  TextEditingController? controller;
  final FormFieldValidator<String>? validator; // Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.86,
    //  height: screenHeight * 0.089,
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: TextStyles.font14White700w,
        keyboardType: keyboardType,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15.0),
          hintText: hintText,
          hintStyle: TextStyles.font12White700w,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                15.r,
              ),
              borderSide: const BorderSide(
                color: AppColors.borderGrey,
              )),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
            borderSide:
                const BorderSide(color: AppColors.loginTextGradientPurple),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
            borderSide: const BorderSide(
              color: AppColors.loginTextGradientPurple,
            ),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
