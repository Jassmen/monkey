import 'package:equatable/equatable.dart';
import 'package:monkey/resources/index.dart';

class BoardingModel extends Equatable{
  final String? image;
  final String? title;
  final String? body;

  BoardingModel({this.image, this.title, this.body});


  @override
  List<Object?> get props => [image,title,body];
}

List<BoardingModel> boardingList=[
  BoardingModel(
      image: AppImages.FIND_FOOD,
      title: AppStrings.FIND_FOOD,
      body: AppStrings.FIND_FOOD_DETAIL),
  BoardingModel(
      image:AppImages.DELIVERY_VICTOR,
      title: AppStrings.FAST_DELIVERY,
      body:AppStrings.FAST_DELIVERY_DETAIL),
  BoardingModel(
      image: AppImages.LIVE_TRACING,
      title: AppStrings.LIVE_TRACING,
      body: AppStrings.LIVE_TRACE_DETAIL),

];