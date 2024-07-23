import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/game.dart';

class GameTile extends StatelessWidget{
  final Game game;
  const GameTile({
    super.key,
    required this.game,
  });

@override
  Widget build(BuildContext context) {
    
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
  
        ),
      
      margin: EdgeInsets.only(left: 20,),
      padding: const EdgeInsets.all(20),
  
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
        //image

        SizedBox(
          width: 150,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
          game.imagePath,
          height: 140,
          ),

        
          ],),
        ),

        Text(
          game.name,
          style: GoogleFonts.dmSerifDisplay(fontSize: 20),
        ),
        //price+rating
        SizedBox(
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [

              //Price
              Text('RM '+ game.price),

              //Rating
              Row(children: [
              Icon(
                Icons.star,
                color: Colors.yellow[800],
                ),
              Text(game.rating,
               style: TextStyle(color: Colors.grey),),
              ],)
              
            ],
          ),
        )
      ],),
    );
  }

}