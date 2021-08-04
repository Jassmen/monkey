import 'package:equatable/equatable.dart';
import 'package:monkey/enum/dashboard_enum.dart';

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
      image: 'assets/splashDash/Find food you love vector.png',
      title: DashStrategy.FindFood,
      body: DashStrategy.FindFoodDetail),
  BoardingModel(
      image: 'assets/splashDash/Delivery vector.png',
      title: DashStrategy.FastDelivery,
      body:DashStrategy.FastDeliveryDetail),
  BoardingModel(
      image: 'assets/splashDash/Live tracking vector.png',
      title: DashStrategy.LiveTracing,
      body: DashStrategy.LiveTracingDetail),

];