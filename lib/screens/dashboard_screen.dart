import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/resources/enum_button.dart';
import 'package:monkey/model/dashboard_mdel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';
import 'home_screen.dart';


class DashboardScreen extends StatefulWidget {
  DashboardScreen();
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  var boardController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: buildBody(context)

    );
  }

  Padding buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.w),
      child: Column(
        children: [
          20.heightBox,
          Align(
            alignment: Alignment.topRight,
            child: AppTextButton(
              child: AppText(
                  text: 'Skip',
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  isUpper:true
              ),
              onPressed: ()=>navigateAndFinish(context, SizedBox()),/////////
            ),),
          Expanded(child: buildPageView(),),

          40.heightBox,
          buildFloatingActionButton(context),
        ],
      ),
    );
  }

  PageView buildPageView() {
    return PageView.builder(
        controller: boardController,
        physics: BouncingScrollPhysics(),
        itemCount: boardingList.length,
        onPageChanged: (int index){
          index == boardingList.length -1 ?
          setState(()=>isLast = true)
              : setState(() => isLast = false);
          print(isLast);
        },
        itemBuilder: (context, index) => pagerItem(boardingList[index]));
  }

  SmoothPageIndicator buildSmoothPageIndicator() {
    return SmoothPageIndicator(
      controller: boardController,
      count: boardingList.length,
      effect: ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: kPrimaryColor,
          dotHeight: 10.h,
          dotWidth: 10.w,
          spacing: 5.w,
          expansionFactor: 4.w
      ),
    );
  }

  Widget buildFloatingActionButton(BuildContext context) {
    return AppButton(onPress: (){
      if(isLast) setState(() {
        navigateAndFinish(context,HomeScreen());
      });
      boardController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn);
    },
    text: ButtonNum.next.value,
      textColor: kWhite,
    );
  }

  Widget pagerItem(BoardingModel boardingItem) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              height: 370.h,
              width: 1.sw,
              child: appImage(boardingItem.image ?? '')),
          ),
          20.heightBox,
          buildSmoothPageIndicator(),
          20.heightBox,
          AppText(text: boardingItem.title,fontSize: 30,fontWeight: FontWeight.w500,color: kPrimaryColor,),
          30.heightBox,
          AppText(text: boardingItem.body,color: kBlack12,maxLine: 2,textAlign: TextAlign.center,fontSize: 15,),
        ]
    );
  }
}
