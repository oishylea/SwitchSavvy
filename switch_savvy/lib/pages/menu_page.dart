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
    Game(name: "Fae Farm", price: "230.00", imagePath: "lib/images/Faefarm.jpg", horizontalPoster: "lib/images/horizontalFaefarm.jpg",
    desc: "Escape to the world of Fae Farm and create your own cozy home in the enchanted world of Azoria. As you nurture and grow your homestead, you'll get to meet charming characters, foster deep relationships and discover ways to infuse magic into everything you do. Customize your character, master the arts of crafting, cooking, potion-making and discover so much more.",
    preview1: "lib/images/Preview1FF.jpg",preview2: "lib/images/Preview2FF.jpg",preview3: "lib/images/Preview3FF.jpg",rating: "4.1"),
    Game(name: "Lemon Cake", price: "250.00", imagePath: "lib/images/LemonCake.jpg", horizontalPoster: "lib/images/horizontalLemonCake.jpg",
    desc: "Mix ingredients together to prepare all kinds of recipes, including baked pastries, candies and frozen desserts! Be sure to serve your customers quickly and keep your window display well stocked so you don’t miss out on any order! Serve coffee to impatient customers to keep them around the bakery a bit longer and build an adorable cat cafe to make everyone’s day brighter!",
    preview1: "lib/images/Preview1LC.jpg",preview2: "lib/images/Preview2LC.jpg",preview3: "lib/images/Preview3LC.jpg",rating: "4.5"),
    Game(name: "Ooblets", price: "230.00", imagePath: "lib/images/Ooblets.jpg", horizontalPoster: "lib/images/horizontalOoblets.jpg",
    desc: "Ooblets is a whimsical farming and creature collecting game for the Nintendo Switch. Players take on the role of a newcomer to the town of Badgetown, where they can grow crops, befriend and collect cute creatures called Ooblets, and participate in dance battles. The gameplay involves a mix of farming, exploration, and social interactions with the quirky residents of Badgetown. The game features a charming art style and a lighthearted, relaxing gameplay experience.",
     preview1: "lib/images/Preview1Oob.jpg",preview2: "lib/images/Preview2Oob.jpg",preview3: "lib/images/Preview3Oob.jpg",rating: "4.1"),
    Game(name: "Splatoon 2", price: "250.00", imagePath: "lib/images/Splatoon2.jpg", horizontalPoster: "lib/images/horizontalSplatoon2.jpg",
    desc: "A colorful and competitive third-person shooter game for the Nintendo Switch. Players take on the role of Inklings, characters who can transform between human and squid form. The objective is to cover as much of the map as possible with your team's colored ink, while also trying to splatter opponents with your various ink-based weapons.",
     preview1: "lib/images/Preview1Spla2.jpg",preview2: "lib/images/Preview2Spla2.jpg",preview3: "lib/images/Preview3Spla2.jpg",rating: "4.8"),
    Game(name: "Animal Crossing", price: "250.00", imagePath: "lib/images/AnimalCrossing.jpg", horizontalPoster: "lib/images/horizontalAnimalCrossing.jpg",
    desc: "Your island getaway has a wealth of natural resources that can be used to craft everything from tools to creature comforts. You can hunt down insects at the crack of dawn, decorate your paradise throughout the day, or enjoy sunset on the beach while fishing in the ocean. The time of day and season match real life, so each day on your island is a chance to check in and find new surprises all year round.",
     preview1: "lib/images/Preview1AC.jpg",preview2: "lib/images/Preview2AC.jpg",preview3: "lib/images/Preview3AC.jpg",rating: "4.9"),
    Game(name: "Spells & Secrets", price: "240.00", imagePath: "lib/images/SpellsAndSecrets.jpg", horizontalPoster: "lib/images/horizontalSpellsAndSecrets.jpg",
    desc: "Free the wizard Academy of Greifenstein from magical creatures by using your spells in creative ways. Play in local co-op with your friends or family, customize your own student wizard, solve mysteries and find powerful artifacts in this modern magical world.",
     preview1: "lib/images/Preview1SS.jpg",preview2: "lib/images/Preview2SS.jpg",preview3: "lib/images/Preview3SS.jpg",rating: "4.1")
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
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 16.0), // Adjust the padding value as needed
      child: IconButton(
        icon: Icon(Icons.shopping_cart, color: Colors.grey[900]),
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
      ),
    ),
  ],
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
