import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/app_theme.dart';
import 'package:monkey/resources/index.dart';
import 'package:monkey/screens/register_sreen.dart';
import 'package:monkey/utils/app_validator.dart';
import 'package:monkey/widgets/index.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen();
   TextEditingController _mobileController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();
   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              10.heightBox,
              AppText(text: AppStrings.LOGIN,color: kBlack,fontSize: 30,),
              20.heightBox,
              AppText(text: AppStrings.ADD_YOUR_DETAIL_SIGNUP,color: kBlack12,textAlign: TextAlign.center,),
              30.heightBox,
              _buildPhoneInput(context),
              20.heightBox,
              _buildPasswordInput(context),
              20.heightBox,
              buildLogin(),
              20.heightBox,
              AppText(text: AppStrings.FORGET_PASSWORD, color: kBlack12,),
              50.heightBox,
              AppText(text: AppStrings.OR_LOGIN , color: kBlack12,),
              20.heightBox,
              buildLoginFacebook(),
              20.heightBox,
              buildLoginGoogle(),
              30.heightBox,
              buildSignupText(context)
            ],
          ),
        ),
      ),
    );
  }

  AppTextFormField _buildPasswordInput(BuildContext context) {
    return AppTextFormField(
            hintText: AppStrings.PASSWORD,
            validator: (value) => AppValidator.validatorPassword(value, context),
            controller: _passwordController,
          );
  }

  AppTextFormField _buildPhoneInput(BuildContext context) {
    return AppTextFormField(
            hintText: AppStrings.MOBILE_NUMBER,
            validator: (value) => AppValidator.validatorMobile(value,value, context),
            controller: _mobileController,
          );
  }

  Row buildSignupText(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [AppText(text: AppStrings.DO_NOT_HAVE_ACCOUNT,color: kBlack12,),
              AppTextButton(onPressed: ()=> navigateAndFinish(context, SignupScreen()),
                  child: AppText(text: AppStrings.SIGNUP, color: kPrimaryColor,fontWeight: FontWeight.w700,))],);
  }

  AppButton buildLogin() => AppButton(onPress: (){},text: AppStrings.LOGIN,);


  AppButton buildLoginGoogle() => AppButton(
    onPress: (){},
    color: kRed,
    prefixWidth: 17,
    prefixHeight: 17,
    text:ButtonNum.google.value,
      prefix: appImage(AppImages.GOOGLE_PLUS_LOGO,),);

  AppButton buildLoginFacebook() {
    return AppButton(onPress: (){},
              text:ButtonNum.facebook.value ,
              prefixHeight: 17,
              prefixWidth: 10,
              prefix: appImage(AppImages.FACEBOOK),
              color: kBlue,);
  }

}
