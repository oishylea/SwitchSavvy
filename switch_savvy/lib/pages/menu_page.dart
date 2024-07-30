import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/components/game_tile.dart';
import 'package:to_do_app/models/game.dart';
import 'package:to_do_app/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Game> gameCatalog = [
    Game(name: "Fae Farm", price: "230.00", imagePath: "lib/images/Faefarm.jpg", horizontalPoster: "lib/images/horizontalFaefarm.jpg",rating: "4.1"),
    Game(name: "Lemon Cake", price: "250.00", imagePath: "lib/images/LemonCake.jpg", horizontalPoster: "lib/images/horizontalLemonCake.jpg",rating: "4.5"),
    Game(name: "Ooblets", price: "230.00", imagePath: "lib/images/Ooblets.jpg", horizontalPoster: "lib/images/horizontalOoblets.jpg",rating: "4.1"),
    Game(name: "Splatoon 2", price: "250.00", imagePath: "lib/images/Splatoon2.jpg", horizontalPoster: "lib/images/horizontalSplatoon2.jpg",rating: "4.8"),
    Game(name: "Animal Crossing", price: "250.00", imagePath: "lib/images/AnimalCrossing.jpg", horizontalPoster: "lib/images/horizontalAnimalCrossing.jpg",rating: "4.9"),
    Game(name: "Spells & Secrets", price: "240.00", imagePath: "lib/images/SpellsAndSecrets.jpg", horizontalPoster: "lib/images/horizontalSpellsAndSecrets.jpg",rating: "4.1")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Shopping',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Get 20% Promo',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 120,
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text('Redeem'),
                        ),
                      )
                    ],
                  ),
                  Image.asset('lib/images/joystick.png', height: 120),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search",
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Game Catalog",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 10),

            
            SizedBox(
              height: 250, // Constrain height for horizontal ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gameCatalog.length,
                itemBuilder: (context, index) => GameTile(
                  game: gameCatalog[index],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Top 3 Games",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("1.   ",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),),
                      Image.asset(
                        'lib/images/AnimalCrossing.jpg',
                        height: 100,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Animal Crossing",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'RM 250.00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
            ),
            //Ranking 2
 const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("2.   ",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),),
                      Image.asset(
                        'lib/images/Splatoon2.jpg',
                        height: 100,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Splatoon 2",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'RM 250.00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
            ),

            //RANKING 3
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("3.   ",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),),
                      Image.asset(
                        'lib/images/Ooblets.jpg',
                        height: 100,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ooblets",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'RM 230.00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
