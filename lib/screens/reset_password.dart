import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/enum/index.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';


class ResetPassword extends StatelessWidget {
   ResetPassword();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            (.1.sh).heightBox,
            AppText(text:SignUpStrategy.ResetPassword,color: kBlack,fontSize: 30),
            20.heightBox,
            AppText(text: SignUpStrategy.ResetDetail,color: kBlack12,maxLine: 2,textAlign: TextAlign.center),
            30.heightBox,
            buildEmail(),
            20.heightBox,
            AppButton(onPress: (){},text: ButtonNum.send.value,)
          ],
        ),
      ),
    );
  }
}
