import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/cartItem.dart';
import 'package:to_do_app/theme/colors.dart';
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

    // // Calculate the total price
    // double totalPrice = cart.fold(
    //   0.0,
    //   (sum, cartItem) => sum + (double.parse(cartItem.game.price) * cartItem.quantity),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: groupedCart.entries.map((entry) {
                final cartItems = entry.value;
                final itemTotalPrice = cartItems.fold(
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
                  subtitle: Text("RM $itemTotalPrice", style: const TextStyle(
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
          ),


Container(
  color: primaryColor,
  padding: const EdgeInsets.all(25),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Total",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            "RM 55555",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Shipping",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            "RM 10",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ],
  ),
),

        ],
      ),
    );
  }
}