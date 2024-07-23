import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/components/button.dart';
import 'package:to_do_app/components/game_tile.dart';
import 'package:to_do_app/models/game.dart';
import 'package:to_do_app/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  List gameCatalog =[

    Game(name: "Fae Farm", price: "230.00", imagePath: "lib/images/Faefarm.jpg", rating: "4.1"),
    Game(name: "Lemon Cake", price: "250.00", imagePath: "lib/images/LemonCake.jpg", rating: "4.5"),
    Game(name: "Ooblets", price: "230.00", imagePath: "lib/images/Ooblets.jpg", rating: "4.1"),
    Game(name: "Spells & Secrets", price: "240.00", imagePath: "lib/images/SpellsAndSecrets.jpg", rating: "4.1"),


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
   
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(25)),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(25),
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
                  ),),

                const SizedBox(height: 10,),


                // redeem button
              Container(
                width: 120, 
                padding: EdgeInsets.all(16), 
                margin: EdgeInsets.symmetric(vertical: 10), 
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('Redeem'),
                ),
              )

                // MyButton(
                //   text: "Redeem",
                //   onTap: (){},
                //   )


                // image

                ],
              ),
                Image.asset('lib/images/joystick.png',height: 120,)

          ],
          
          ),
        ),


        const SizedBox(height: 25),
        //Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                borderRadius: BorderRadius.circular(20)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Search"
            ),
          ),
        ),

        //Menu List

        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "Game Catalog",
            style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black,
              fontSize: 18,
            )),
        ),

        const SizedBox(height: 10),


        Expanded(
          child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: gameCatalog.length,      
          itemBuilder: (context,index)=>GameTile(
                          game: gameCatalog[index],
                        ),
                        ),
        ),



        // Popular Food

        const SizedBox(height: 25),

        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20)
          ),
          margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),
          padding: const EdgeInsets.all(20),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'lib/images/Ooblets.jpg',
                    height: 100,),
                  
                    const SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Ooblets",style: GoogleFonts.dmSerifDisplay(
                        color: Colors.black,
                        fontSize: 18),),
                  
                        const SizedBox(height: 10,),
                      
                      Text('RM 230.00',style: TextStyle(color: Colors.black),)
                    ],),
                ],
              ),
              
              
              //heart
              Icon(Icons.favorite_outline,color: Colors.grey,size: 28,),


            ],
          ),
        )



      ],
      ),
   
    );

  }
}
