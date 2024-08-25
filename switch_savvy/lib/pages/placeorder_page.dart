import 'package:flutter/material.dart';

class PlaceOrderPage extends StatefulWidget {
  @override
  _PlaceOrderPageState createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Order Page'),
      ),
      body: Center(
        child: Text('This is the Place Order Page'),
      ),
    );
  }
}