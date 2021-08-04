import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/enum/index.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';


class OTPScreen extends StatefulWidget {
   OTPScreen();

  @override
  _OTPScreenState createState() => _OTPScreenState();
}


class _OTPScreenState extends State<OTPScreen> {

  FocusNode? focusNode1 ;
  FocusNode? focusNode2 ;
  FocusNode? focusNode3 ;
  FocusNode? focusNode4 ;

  @override
  void initState() {
    super.initState();
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1!.dispose();
    focusNode2!.dispose();
    focusNode3!.dispose();
    focusNode4!.dispose();
  }

  void nextFocus({required String value, required FocusNode focusNode}){
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(30.w),
            child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (.1.sh).heightBox,
                      AppText(text: SignUpStrategy.OTP,
                      color: kBlack,
                      fontSize: 30,
                      maxLine: 2,textAlign: TextAlign.center,
                      ),
                      20.heightBox,
                      AppText(
                        text: SignUpStrategy.OTPDetail,
                        color: kBlack12,maxLine: 2,
                        textAlign: TextAlign.center,),
                      30.heightBox,
                      otpForm(),
                      20.heightBox,
                      AppButton(onPress: (){},text: ButtonNum.next.value,),
                      10.heightBox,
                      buildClickHereText(context)
            
                    ])
            )
        )
    );
  }

  Row buildClickHereText(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [AppText(text: SignUpStrategy.OTPDidNotReceive,color: kBlack12,),
        AppTextButton(onPressed: ()=> navigateAndFinish(context, SizedBox()),
            child: AppText(text: SignUpStrategy.ClickHere, color: kPrimaryColor,fontWeight: FontWeight.w700,))],);
  }
  
  
  Form otpForm() {
    return Form(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          formItem(focusNode1!),
          formItem(focusNode2!),
          formItem(focusNode3!),
          formItem(focusNode4!),

        ],
      )
    );
  }


  Widget formItem(FocusNode focusNode) {
    return Container(
      width: 60.w,
      height: 60.h,
      child: AppTextFormField(
              hintText: '*',
              radius: 5,
              autofocus: false,
              isPassword: true,
              hintColor: Colors.black,
              background: kGrey,
              textInputType: TextInputType.number,
              textAlign:TextAlign.center,
              padding:0
              // onChanged: (value){
              //   nextFocus(value: value, focusNode: focusNode);
              // },
            ),
    );
  }
}