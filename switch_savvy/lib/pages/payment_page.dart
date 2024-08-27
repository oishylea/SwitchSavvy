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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Choose Payment Method',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _buildCartItem("lib/images/grabpay.png"),
                    _buildCartItem("lib/images/shopeepay.png"),
                    _buildCartItem("lib/images/tng.png"),
                    _buildCartItem("lib/images/applepay.png"),
                    _buildCartItem("lib/images/duitnow.png"),
                    _buildCartItem("lib/images/fpx.png"),
                    _buildCartItem("lib/images/visa.png"),
                    _buildCartItem("lib/images/paypal.png"),

                  ],
                ),
              ],
            ),
          ),
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
        padding: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            imageUrl,
            height: 80,
          ),
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
      title: Text("Payment"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/images/payment.png',
            height: 150,
          ),
          SizedBox(height: 16.0),
          Text('Payment Successful'),
        ],
      ),
    ),
  );
}
}