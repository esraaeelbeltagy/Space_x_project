import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/continue_button.dart';
import '../../../sign_up/view/widgets/custom_text_form_feild.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
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
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return AppStrings.pleaseEnterEmail;
              }
              return null;
            },
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            errorMessage: AppStrings.pleaseEnterEmail,
          ),
          SizedBox(
            height: 20.h,
          ),
          CutomTextFormFeild(
            controller: passwordController,
            validator: (value) {
              if (value!.isEmpty) {
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
            height: 200.h,
          ),

          CustomGradientButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                print("Valid");
              } else {
                print("Not Valid");
              }
            },
          )
         
        ],
      ),
    );
  }
}
