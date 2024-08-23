import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/cartItem.dart';
import '../models/shop.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<Shop>(context);
    final cart = shop.cart;

    // Group the cart items by name
    Map<String, List<CartItem>> groupedCart = {};
    for (var game in cart) {
      if (groupedCart.containsKey(game.name)) {
        groupedCart[game.name]!.add(CartItem(game));
      } else {
        groupedCart[game.name] = [CartItem(game)];
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: ListView(
        children: groupedCart.entries.map((entry) {
          final cartItems = entry.value;
          final totalPrice = cartItems.fold(
            0.0,
            (sum, cartItem) => sum + (double.parse(cartItem.game.price) * cartItem.quantity),
          );
          return ListTile(
            leading: Image.asset(cartItems.first.game.imagePath),
            title: Text(entry.key, style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            subtitle: Text("RM $totalPrice", style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                )),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    for (var cartItem in cartItems) {
                      if (cartItem.quantity > 1) {
                        shop.decrementQuantity(cartItem.game);
                        cartItem.quantity--;
                        setState(() {});
                        break;
                      } else {
                        shop.removeFromCart(cartItem.game);
                        cartItems.remove(cartItem);
                        setState(() {});
                        break;
                      }
                    }
                  },
                ),

                Text(
                  "${cartItems.length}".padLeft(2, '0'),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.right,
                ),

                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    for (var cartItem in cartItems) {
                      shop.incrementQuantity(cartItem.game);
                      cartItem.quantity++;
                      setState(() {});
                      break;
                    }
                  },
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}