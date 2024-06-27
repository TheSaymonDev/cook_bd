import 'package:cook_bd/utils/app_urls.dart';

class FoodItem {
  final String name;
  final String rating;
  final String availableItem;
  final String time;
  final String price;
  final String imageUrl;
  final bool isAdded;

  FoodItem(
      {required this.name,
      required this.rating,
      required this.availableItem,
      required this.time,
      required this.price,
      required this.imageUrl,
      this.isAdded = false});
}

final List<FoodItem> recommendedItems = [
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
];

final List<FoodItem> burgerItems = [
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
  FoodItem(
      name: 'Chicken Burger',
      rating: '4.5',
      availableItem: '100+',
      time: '25 min',
      price: '100',
      imageUrl: AppUrls.demoBurger),
];

final List<FoodItem> juiceItems = [
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
  FoodItem(
      name: 'Mango Juice',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoJuice),
];

final List<FoodItem> fryChickenItems = [
  FoodItem(
      name: 'Fry Chicken',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoFryChicken),
  FoodItem(
      name: 'Fry Chicken',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoFryChicken),
  FoodItem(
      name: 'Fry Chicken',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoFryChicken),
  FoodItem(
      name: 'Fry Chicken',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoFryChicken),
  FoodItem(
      name: 'Fry Chicken',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoFryChicken),
  FoodItem(
      name: 'Fry Chicken',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoFryChicken),
];

final List<FoodItem> drinksItems = [
  FoodItem(
      name: 'Coca Cola',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
  FoodItem(
      name: 'Pepsi',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
  FoodItem(
      name: 'Coca Cola',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
  FoodItem(
      name: 'Pepsi',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
  FoodItem(
      name: 'Coca Cola',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
  FoodItem(
      name: 'Pepsi',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
  FoodItem(
      name: 'Coca Cola',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
  FoodItem(
      name: 'Pepsi',
      rating: '3.5',
      availableItem: '100+',
      time: '20 min',
      price: '50',
      imageUrl: AppUrls.demoDrinks),
];
