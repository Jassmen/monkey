import 'package:equatable/equatable.dart';
import 'package:monkey/resources/image_path.dart';

class FoodListType extends Equatable {
  FoodListType({this.foodName, this.img});

  final String? img;
  final String? foodName;

  @override
  List<Object?> get props => [foodName, img];
}

List<FoodListType> foodListType = [
  FoodListType(foodName: 'Offers', img: AppImages.OFFERS),
  FoodListType(foodName: 'Sri Lankan', img: AppImages.SIR_LANKAN),
  FoodListType(foodName: 'Italian', img: AppImages.ITALIAN),
  FoodListType(foodName: 'Indian', img: AppImages.INDIAN),
];

///***********************************//
class PopularFoodList extends Equatable {
  PopularFoodList(
      {this.foodName,
      this.img,
      this.rating = '4.9',
      this.ratingNum = '143',
      this.cafe = 'Cafe',
      this.westernFood = 'Western Food'});

  final String? img;
  final String? foodName;
  final String? rating;
  final String? ratingNum;
  final String? cafe;
  final String? westernFood;

  @override
  List<Object?> get props => [foodName, img,rating,ratingNum,cafe,westernFood];
}

List<PopularFoodList> popularListType = [
  PopularFoodList(foodName: 'Minute by tuk tuk', img: AppImages.MINUTE_BY_TUK_TUK),
  PopularFoodList(foodName: 'Café de Noir', img: AppImages.CAFE_DE_NOIR),
  PopularFoodList(foodName: 'Bakes by Tella', img: AppImages.BAKES_BY_TELLA),

];


  // List<PopularFoodList> ListType = [
  //   PopularFoodList(foodName: 'Burger by Bella', img: AppImages.BURGER_BY_BELLA),
  //   PopularFoodList(foodName: 'Beverages', img: AppImages.BEVERAGES),
  //   PopularFoodList(foodName: 'Desserts', img: AppImages.DESSERTS),
  //   PopularFoodList(foodName: 'Food', img: AppImages.FOOD),
  //   PopularFoodList(foodName: 'Promotions', img: AppImages.PROMOTIONS),
  //   PopularFoodList(foodName: 'Promotions_1', img: AppImages.PROMOTIONS_1),
  //   PopularFoodList(foodName: 'Sri Lankan', img: AppImages.SIR_LANKAN),
  //   PopularFoodList(foodName: 'Mulberry Pizza by Josh', img: AppImages.MULBERRY_PIZZA),
  //   PopularFoodList(foodName: 'Barita', img: AppImages.BARITA),
  //   PopularFoodList(foodName: 'Pizza Rush Hour', img: AppImages.PIZZA_RUSH_HOUR),
  // ];
