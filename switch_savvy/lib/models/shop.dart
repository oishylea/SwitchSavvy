import 'package:flutter/material.dart';
import 'package:to_do_app/models/cartItem.dart';
import 'game.dart';

class Shop extends ChangeNotifier{

    final List<Game> _gameCatalog = [
    //Game(name: "Fae Farm", price: "230.00", imagePath: "lib/images/Faefarm.jpg", horizontalPoster: "../images/horizontalFaefarm.jpg",
    //desc: "Escape to the world of Fae Farm and create your own cozy home in the enchanted world of Azoria. As you nurture and grow your homestead, you'll get to meet charming characters, foster deep relationships and discover ways to infuse magic into everything you do. Customize your character, master the arts of crafting, cooking, potion-making and discover so much more.",
    //preview1: "lib/images/Preview1FF.jpg",preview2: "lib/images/Preview2FF.jpg",preview3: "lib/images/Preview3FF.jpg",rating: "4.1"),
    Game(name: "Lemon Cake", price: "250.00", imagePath: "lib/images/LemonCake.jpg", horizontalPoster: "lib/images/horizontalLemonCake.jpg",
    desc: "Mix ingredients together to prepare all kinds of recipes, including baked pastries, candies and frozen desserts! Be sure to serve your customers quickly and keep your window display well stocked so you don’t miss out on any order! Serve coffee to impatient customers to keep them around the bakery a bit longer and build an adorable cat cafe to make everyone’s day brighter!",
    preview1: "lib/images/Preview1LC.jpg",preview2: "lib/images/Preview2LC.jpg",preview3: "lib/images/Preview3LC.jpg",rating: "4.5"),
    Game(name: "Ooblets", price: "230.00", imagePath: "lib/images/Ooblets.jpg", horizontalPoster: "lib/images/horizontalOoblets.jpg",
    desc: "Ooblets is a whimsical farming and creature collecting game for the Nintendo Switch. Players take on the role of a newcomer to the town of Badgetown, where they can grow crops, befriend and collect cute creatures called Ooblets, and participate in dance battles. The gameplay involves a mix of farming, exploration, and social interactions with the quirky residents of Badgetown. The game features a charming art style and a lighthearted, relaxing gameplay experience.",
     preview1: "lib/images/Preview1Oob.jpg",preview2: "lib/images/Preview2Oob.jpg",preview3: "lib/images/Preview3Oob.jpg",rating: "4.1"),
    Game(name: "Splatoon 2", price: "250.00", imagePath: "lib/images/Splatoon2.jpg", horizontalPoster: "lib/images/horizontalSplatoon2.jpg",
    desc: "A colorful and competitive third-person shooter game for the Nintendo Switch. Players take on the role of Inklings, characters who can transform between human and squid form. The objective is to cover as much of the map as possible with your team's colored ink, while also trying to splatter opponents with your various ink-based weapons.",
     preview1: "lib/images/Preview1Spla2.jpg",preview2: "lib/images/Preview2Spla2.jpg",preview3: "lib/images/Preview3Spla2jpg",rating: "4.8"),
    Game(name: "Animal Crossing", price: "250.00", imagePath: "lib/images/AnimalCrossing.jpg", horizontalPoster: "lib/images/horizontalAnimalCrossing.jpg",
    desc: "Your island getaway has a wealth of natural resources that can be used to craft everything from tools to creature comforts. You can hunt down insects at the crack of dawn, decorate your paradise throughout the day, or enjoy sunset on the beach while fishing in the ocean. The time of day and season match real life, so each day on your island is a chance to check in and find new surprises all year round.",
     preview1: "lib/images/Preview1AC.jpg",preview2: "lib/images/Preview2AC.jpg",preview3: "lib/images/Preview3AC.jpg",rating: "4.9"),
    Game(name: "Spells & Secrets", price: "240.00", imagePath: "lib/images/SpellsAndSecrets.jpg", horizontalPoster: "lib/images/horizontalSpellsAndSecrets.jpg",
    desc: "Free the wizard Academy of Greifenstein from magical creatures by using your spells in creative ways. Play in local co-op with your friends or family, customize your own student wizard, solve mysteries and find powerful artifacts in this modern magical world.",
     preview1: "lib/images/Preview1SS.jpg",preview2: "lib/images/Preview2SS.jpg",preview3: "lib/images/Preview3SS.jpg",rating: "4.1")
  ];

  List<Game> _cart=[];

  List<Game> get gameCatalog => _gameCatalog;
  List<Game> get cart => _cart;

  void addToCart(Game gameitem, int quantity){
    for (int i=0; i< quantity; i++){
      _cart.add(gameitem);
    }
    notifyListeners();
  }

  void removeFromCart(Game game){
    _cart.remove(game);
    notifyListeners();
  }

void decrementQuantity(Game game) {
    int index = _cart.indexOf(game);
    if (index != -1 && _cart[index].quantity > 1) {
      _cart[index].quantity--;
      notifyListeners();
    } else if (index != -1) {
      _cart.removeAt(index);
      notifyListeners();
    }
  }


    void incrementQuantity(Game game) {
      int index = _cart.indexOf(game);
      if (index != -1 && _cart[index].quantity > 1) {
        _cart[index].quantity++;
        notifyListeners();
      } else {
        _cart.add(game);
        notifyListeners();
      }
    }
}