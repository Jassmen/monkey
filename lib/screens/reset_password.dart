import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/resources/index.dart';
import 'package:monkey/utils/app_validator.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';


class ResetPassword extends StatelessWidget {
   ResetPassword();
   TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            (.1.sh).heightBox,
            AppText(text:AppStrings.RESET_PASSWORD,color: kBlack,fontSize: 30),
            20.heightBox,
            AppText(text: AppStrings.RESET_DETAIL,color: kBlack12,maxLine: 2,textAlign: TextAlign.center),
            30.heightBox,
            _buildEmailInput(context),
            20.heightBox,
            AppButton(onPress: (){},text: ButtonNum.send.value,)
          ],
        ),
      ),
    );
  }

   AppTextFormField _buildEmailInput(BuildContext context) {
     return AppTextFormField(
       hintText: AppStrings.EMAIL,
       validator: (value) => AppValidator.validatorEmail(value, context),
       controller: _emailController,
     );
   }
}
