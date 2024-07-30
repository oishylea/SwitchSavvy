import 'package:flutter/material.dart';
import 'package:to_do_app/theme/colors.dart';
import '../models/game.dart';
class GameDetailPage extends StatefulWidget {
  final Game game;

  const GameDetailPage({super.key, required this.game});

  @override
  _GameDetailPageState createState() => _GameDetailPageState();
}

class _GameDetailPageState extends State<GameDetailPage> {
  int quantityCount = 0;

  void decrementQuality() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  void incrementQuality() {
    setState(() {
      quantityCount++;
    });
  }

  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.game.name),
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
                    Image.asset(
                      widget.game.horizontalPoster,
                      height: 200,
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      widget.game.name,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.game.desc,
                      style: const TextStyle(
                        height: 2,
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
                            onPressed: decrementQuality,
                          ),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                            width: 40,
                            child: Center(
                                child: Text('$quantityCount',
                                    style: const TextStyle(fontWeight: FontWeight.bold)))),
                        const SizedBox(width: 8),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.black,
                            onPressed: incrementQuality,
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
                    onPressed: addToCart,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Add to Cart', style: TextStyle(color: Colors.black)),
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