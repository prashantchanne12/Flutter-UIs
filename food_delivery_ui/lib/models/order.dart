import 'package:fooddeliveryui/models/food.dart';
import 'package:fooddeliveryui/models/restaurant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    this.restaurant,
    this.food,
    this.date,
    this.quantity,
  });
}
