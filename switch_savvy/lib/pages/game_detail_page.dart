import 'package:flutter/material.dart';
import '../models/game.dart';

class GameDetailPage extends StatelessWidget {
  final Game game;

  const GameDetailPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              game.imagePath,
              height: 200,
            ),
            SizedBox(height: 16),
            Text(
              game.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Price: RM ' + game.price),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                ),
                Text(
                  game.rating,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("desc of the game"), // Assuming the Game model has a description field
          ],
        ),
      ),
    );
  }
}
