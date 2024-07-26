import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/themes/app_colors.dart';

import 'features/auth/sign_up/view/screens/add_profile_pic.dart';
import 'features/crew/view/crew.dart';
import 'features/lanches/view/lanches.dart';

class SpaceXApp extends StatelessWidget {
  const SpaceXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Space x gate',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.purple,
          scaffoldBackgroundColor: AppColors.lightBlack,
        ),
        home:   const CrewScreen(),
      ),
    );
  }
}
