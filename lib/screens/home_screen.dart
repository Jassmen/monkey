import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkey/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/model/food_list_type.dart';
import 'package:monkey/widgets/index.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            startBody(),
            popularRestaurantBody()
          ],
        ),
      ),
    );
  }

  ListView popularRestaurantBody() {
    return ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: popularListType.length,
            itemBuilder:(context,index)=> popularRestaurantItem(index),
          );
  }

  Container popularRestaurantItem(int index) {
    return Container(
              height: 290.h,width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Container(
                     height: 200.h,
                     width: 1.sw,
                     child: appImage(popularListType[index].img!),),
                  10.heightBox,
                  Padding(
                      padding: EdgeInsets.only(left:20.w,right: 20.w),
                      child:AppText(text: popularListType[index].foodName,color: kBlack,fontSize:17,fontWeight: FontWeight.w700,)
                  ),
                  10.heightBox,
                  Padding(
                    padding: EdgeInsets.only(left:20.w,right: 20.w),
                    child: Row(
                      children: [
                        Container(
                            width: 15.w,
                            height: 15.h,
                            margin: EdgeInsets.only(right: 5.w),
                            child: appImage('assets/icons/star.png')),
                        AppText(text: popularListType[index].rating,fontSize:13 ,color: kPrimaryColor,),
                        5.widthBox,
                        AppText(text: '(${popularListType[index].ratingNum} ratings) ${popularListType[index].cafe} ',fontSize:13 ,color: kHint,),
                        AppText(text: ' .',fontSize:13 ,color: kPrimaryColor,),
                        AppText(text: popularListType[index].westernFood,fontSize:13 ,color: kHint,),

                      ],
                    ),
                  )
            ],),);
  }

  Widget startBody() {
    return Padding(
      padding:EdgeInsets.all(20.w),
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildBackDrop(),
                  20.heightBox,
                  buildSearchField(),
                  40.heightBox,
                  foodTypeList(),
                  20.heightBox,
                  popularRow(),
                ],

              ),
    );
  }

  Row popularRow() {
    return Row(children: [
              AppText(text: 'Popular Restaurants',fontSize: 20,fontWeight:FontWeight.w600,color: kBlack,),
              Spacer(),
              AppTextButton(onPressed: (){}, child:AppText(text: 'view all',fontWeight:FontWeight.w600,color: kPrimaryColor,) )
            ],);
  }

  Container foodTypeList() {
    return Container(
              width: 1.sw,
              height: 140.h,
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: foodListType.length,
                itemBuilder: (context,index)=>
                    foodTypeListItem(index),

              ),
            );
  }

  Widget foodTypeListItem(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width:90.w,
          height: 100.h,
          margin: EdgeInsets.only(right: 15.w),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(15.w),
            image: DecorationImage(image: AssetImage(foodListType[index].img!),fit: BoxFit.cover)
          )
        ),
        10.heightBox,
        Padding(
          padding:EdgeInsets.only(right: 15.w),
          child: AppText(text:foodListType[index].foodName ,color: kBlack,fontWeight: FontWeight.w600,),
        )
      ],
    );
  }

  Widget buildBackDrop() {
    return Container(
      width: .5.sw,
      child: ListTile(
        contentPadding: EdgeInsets.all(5.w),
        title: AppText(text:'Delivering to ',color: kHint,),
        trailing:Container(
          width: 10.w,height: 10.h,
          child: appImage('assets/icons/Group 6819.png'),) ,
          subtitle: AppText(text:'Current Location ',maxLine: 1,
          color: kBlack12,fontWeight: FontWeight.w600,fontSize: 17,),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      titleSpacing: 20.w,
      title: AppText(text:'Good morning Akila!',color: kBlack12,fontSize: 20,),
      actions: [
        Container(
          width: 15.w,height: 5.w,
          padding: EdgeInsets.only(bottom: 15,top: 15,),
          child: appImage('assets/icons/shopping-cart.png'),),
        20.widthBox
      ],
    );
  }
}
