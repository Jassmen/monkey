import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/app_theme.dart';
import 'package:monkey/enum/index.dart';
import 'package:monkey/screens/signup_screen.dart';
import 'package:monkey/widgets/index.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(),
      body: buildBody(context),
    );
  }

  Padding buildBody(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            10.heightBox,
            AppText(text: LoginStrategy.Login,color: kBlack,fontSize: 30,),
            20.heightBox,
            AppText(text: LoginStrategy.AddYourDetail,color: kBlack12,textAlign: TextAlign.center,),
            30.heightBox,
            buildMobileNo(),
            20.heightBox,
            buildPassword(),
            20.heightBox,
            buildLogin(),
            20.heightBox,
            AppText(text: LoginStrategy.ForgetPassword, color: kBlack12,),
            50.heightBox,
            AppText(text: LoginStrategy.OrLogin , color: kBlack12,),
            20.heightBox,
            buildLoginFacebook(),
            20.heightBox,
            buildLoginGoogle(),
            30.heightBox,
            buildSignupText(context)
          ],
        ),
      ),
    );
  }

  Row buildSignupText(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [AppText(text: LoginStrategy.HaveNotAnAccount,color: kBlack12,),
              AppTextButton(onPressed: ()=> navigateAndFinish(context, SignupScreen()),
                  child: AppText(text: LoginStrategy.SignUp, color: kPrimaryColor,fontWeight: FontWeight.w700,))],);
  }

  AppButton buildLogin() => AppButton(onPress: (){},text: LoginStrategy.Login,);


  AppButton buildLoginGoogle() => AppButton(
    onPress: (){},
    color: kRed,
    prefixWidth: 17,
    prefixHeight: 17,
    text:ButtonNum.google.value,
      prefix: appImage('assets/icons/google-plus-logo.png',),);

  AppButton buildLoginFacebook() {
    return AppButton(onPress: (){},
              text:ButtonNum.facebook.value ,
              prefixHeight: 17,
              prefixWidth: 10,
              prefix: appImage('assets/icons/Facebook.png'),
              color: kBlue,);
  }

}
