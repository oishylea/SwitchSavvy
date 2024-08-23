import 'package:to_do_app/models/game.dart';

class CartItem {
  final Game game;
  int quantity;

  CartItem(this.game, [this.quantity = 1]);
}