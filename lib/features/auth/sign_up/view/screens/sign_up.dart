import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:space_x_gate/features/auth/sign_in/view/sign_in.dart';

import '../../../../../core/themes/text_styles.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_strings.dart';
import '../widgets/sign_up_form.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                AppImages.appLogo,
                height: 100.h,
                width: 100.w,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppStrings.signUp,
              style: TextStyles.textStyle34,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppStrings.createYourAccountToContinueExploring,
              style: TextStyles.textStyle12400,
            ),
            SizedBox(
              height: 30.h,
            ),
            const SignUpForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.alreadyHaveAnAccount,
                  style: TextStyles.font12White700w,
                ),
                TextButton(
                  onPressed: () {

                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignIn()),
  );
                  },
                  child: const Text(
                    AppStrings.signIn,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

