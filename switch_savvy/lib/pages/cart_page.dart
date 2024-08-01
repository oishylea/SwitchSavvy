import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Shop>(context).cart;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(cart[index].imagePath),
            title: Text(cart[index].name),
            subtitle: Text("RM ${cart[index].price}"),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () {
                Provider.of<Shop>(context, listen: false).removeFromCart(cart[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
