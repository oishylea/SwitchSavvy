import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/game.dart';
import 'package:to_do_app/models/shop.dart';
import 'package:to_do_app/theme/colors.dart';

class SplatoonPage extends StatefulWidget {
  Game get game => Game(
        name: "Splatoon 2",
        price: "199.99",
        imagePath: "images/AnimalCrossing.jpg",
        horizontalPoster: "images/horizontalAnimalCrossing.jpg",
        desc:
            "Your island getaway has a wealth of natural resources that can be used to craft everything from tools to creature comforts. You can hunt down insects at the crack of dawn, decorate your paradise throughout the day, or enjoy sunset on the beach while fishing in the ocean. The time of day and season match real life, so each day on your island is a chance to check in and find new surprises all year round.",
        preview1: "images/Preview1AC.jpg",
        preview2: "images/Preview2AC.jpg",
        preview3: "images/Preview3AC.jpg",
        rating: "4.9",
      );

  @override
  _SplatoonPageState createState() => _SplatoonPageState();
}

class _SplatoonPageState extends State<SplatoonPage> {
  int quantityCount = 1;

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  void decrementQuantity() {
    if (quantityCount > 1) {
      setState(() {
        quantityCount--;
      });
    }
  }

  void addToCart() {
    Provider.of<Shop>(context, listen: false).addToCart(widget.game, quantityCount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splatoon 2"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        widget.game.horizontalPoster,
                        height: 200,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      widget.game.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          widget.game.rating,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.game.desc,
                      style: const TextStyle(
                        height: 2,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        widget.game.preview1,
                        height: 200,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        widget.game.preview2,
                        height: 200,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        widget.game.preview3,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RM ${widget.game.price}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.remove),
                            color: Colors.black,
                            onPressed: decrementQuantity,
                          ),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              '$quantityCount',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.black,
                            onPressed: incrementQuantity,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      addToCart();
                      Navigator.pushNamed(context, '/cart');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}