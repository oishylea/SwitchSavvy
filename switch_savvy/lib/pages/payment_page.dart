import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose Payment Method'),
            SizedBox(height: 20),
            _buildCartItem(
              "lib/images/applepay.png",
            ),
          ],
        ),
      ),
    );
  }

 Widget _buildCartItem(String imageUrl) {
  return GestureDetector(
    onTap: () {
      // Navigate to the detailed page for the item
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemDetailPage(itemName: imageUrl),
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              imageUrl,
              height: 100,
            ),
          ),
        ],
      ),
    ),
  );
}
}

class ItemDetailPage extends StatelessWidget {
  final String itemName;

  ItemDetailPage({required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Center(
        child: Text('Item Detail Page'),
      ),
    );
  }
}