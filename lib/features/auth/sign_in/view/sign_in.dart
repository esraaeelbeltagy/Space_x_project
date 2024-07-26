import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_x_gate/features/auth/sign_up/view/screens/sign_up.dart';

import '../../../../core/themes/text_styles.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import 'widgets/sign_in_form.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              AppStrings.signIn,
              style: TextStyles.textStyle34,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppStrings.getBackInToContinueExploring,
              style: TextStyles.textStyle12400,
            ),
            SizedBox(
              height: 50.h,
            ),
            const SignInForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.dontHaveAnAccount,
                  style: TextStyles.font12White700w,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignUp()),
  );
                  },
                  child: const Text(
                    AppStrings.signUp,
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

