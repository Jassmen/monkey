import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/resources/index.dart';
import 'package:monkey/screens/login_screen.dart';
import 'package:monkey/screens/register_sreen.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Stack(
        children: [
          Container(
            height: .5.sh,
            width: 1.sw,
            child: Stack(
              children: [
                appImage(AppImages.BACKGROUND_OBJECT_1),
                appImage(AppImages.BACKGROUND_OBJECT),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: .3.sh),
                Container(
                    height: 200.h,
                    width: 200.w,
                    margin: EdgeInsets.only(top: 40.h),
                    child: appImage(AppImages.LOGO)),
                50.heightBox,
                AppText(
                  text: AppStrings.FIRST_PAGE,
                  color: kBlack12,
                  fontSize: 12,
                  maxLine: 2,
                  textAlign: TextAlign.center,
                ),
                50.heightBox,
                AppButton(
                  onPress: () => navigateAndFinish(context, LoginScreen()),
                  text: ButtonNum.login.value,
                  width: 1,
                  height: 50,
                  textColor: kWhite,
                  isUpperCase: false,
                ),
                30.heightBox,
                AppButton(
                  onPress: () => navigateAndFinish(context, SignupScreen()),
                  color: kWhite,
                  text: ButtonNum.create.value,
                  width: 1.sw,
                  height: 50.h,
                  isUpperCase: false,
                  textColor: kPrimaryColor,
                  borderColor: kPrimaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
