import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/enum/signup_strategy.dart';
import 'package:monkey/screens/login_screen.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';


class SignupScreen extends StatelessWidget {
  SignupScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
              children: [
                (.1.sh).heightBox,
              AppText(text:SignUpStrategy.SignUp,color: kBlack,fontSize: 30),
              20.heightBox,
              AppText(text: SignUpStrategy.AddYourDetail,color: kBlack12),
               30.heightBox,
               buildName(),
               20.heightBox,
               buildEmail(),
               20.heightBox,
               buildMobileNo(),
               20.heightBox,
               buildAddress(),
               20.heightBox,
               buildPassword(),
               20.heightBox,
                buildPasswordConfirm(),
               20.heightBox,
               buildSignup(),
               20.heightBox,
               buildLoginText(context),

        ]),
        ),
      )
    );
  }

  AppButton buildSignup() => AppButton(onPress: (){},text: SignUpStrategy.SignUp,);

  Row buildLoginText(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [AppText(text: SignUpStrategy.HaveAnAccount,color: kBlack12,),
        AppTextButton(onPressed: ()=> navigateAndFinish(context, LoginScreen()),
            child: AppText(text: SignUpStrategy.Login, color: kPrimaryColor,fontWeight: FontWeight.w700,))],);
  }
}
