import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_sign_button.dart';
import 'custom_text_form_feild.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CutomTextFormFeild(
            controller: nameController,
            validator: (value) {
              if(value!.isEmpty){
                return AppStrings.pleaseEnterName;
              }
              return null;
            },
            hintText: AppStrings.name,
            keyboardType: TextInputType.name,
            errorMessage: AppStrings.pleaseEnterName,
          ),
          SizedBox(
            height: 15.h,
          ),
          CutomTextFormFeild(
            controller: emailController,
           validator: (value) {
              if(value!.isEmpty){
                return AppStrings.pleaseEnterEmail;
              }
              return null;
            },
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            errorMessage: AppStrings.pleaseEnterEmail,
          ),
          SizedBox(
            height: 15.h,
          ),
          CutomTextFormFeild(
            controller: passwordController,
           validator: (value) {
              if(value!.isEmpty){
                return AppStrings.pleaseEnterpassword;
              }
              return null;
            },
            hintText: AppStrings.password,
            keyboardType: TextInputType.visiblePassword,
            errorMessage: AppStrings.pleaseEnterpassword,
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: AppColors.white,
              size: 20.sp,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          CutomTextFormFeild(
            controller: confirmPasswordController,
          validator: (value) {
              if(value!.isEmpty){
                return AppStrings.pleaseConfirmPassword;
              }
              return null;
            },
            hintText: AppStrings.confirmPassword,
            keyboardType: TextInputType.visiblePassword,
            errorMessage: AppStrings.pleaseConfirmPassword,
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: AppColors.white,
              size: 20.sp,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
               print("Valid");
              }else {
                print("Not Valid");
              }
            },
            text: AppStrings.continueSign,
            icon: Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
