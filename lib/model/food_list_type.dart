import 'package:equatable/equatable.dart';

class FoodListType extends Equatable {
  FoodListType({this.foodName, this.img});

  final String? img;
  final String? foodName;

  @override
  List<Object?> get props => [foodName, img];
}

List<FoodListType> foodListType = [
  FoodListType(foodName: 'Offers', img: 'assets/Foods/Offers.png'),
  FoodListType(foodName: 'Sri Lankan', img: 'assets/Foods/Sri Lankan.png'),
  FoodListType(foodName: 'Italian', img: 'assets/Foods/Italian.png'),
  FoodListType(foodName: 'Indian', img: 'assets/Foods/Indian.png'),
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
  PopularFoodList(foodName: 'Minute by tuk tuk', img: 'assets/Foods/Minute by tuk tuk.png'),
  PopularFoodList(foodName: 'Café de Noir', img: 'assets/Foods/Café de Noir.png'),
  PopularFoodList(foodName: 'Bakes by Tella', img: 'assets/Foods/Bakes by Tella.png'),

];


/*  List<PopularFoodList> ListType = [
    PopularFoodList(foodName: 'Burger by Bella', img: 'assets/Foods/Burger by Bella.png'),
    PopularFoodList(foodName: 'Beverages', img: 'assets/Foods/Beverages.png'),
    PopularFoodList(foodName: 'Desserts', img: 'assets/Foods/Desserts.png'),
    PopularFoodList(foodName: 'Food', img: 'assets/Foods/Food.png'),
    PopularFoodList(foodName: 'Promotions', img: 'assets/Foods/Promotions.png'),
    PopularFoodList(foodName: 'Promotions_1', img: 'assets/Foods/Promotions_1.png'),
    PopularFoodList(foodName: 'Sri Lankan', img: 'assets/Foods/Sri Lankan.png'),
    PopularFoodList(foodName: 'Mulberry Pizza by Josh', img: 'assets/Foods/Mulberry Pizza by Josh.png'),
    PopularFoodList(foodName: 'Barita', img: 'assets/Foods/Barita.png'),
    PopularFoodList(foodName: 'Pizza Rush Hour', img: 'assets/Foods/Pizza Rush Hour.png'),
  ];*/
