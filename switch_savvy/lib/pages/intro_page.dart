// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 191),
      body: Padding(
        padding: const EdgeInsets.only(left: 25,top: 40,right: 25),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
              Text(
                "SWITCH SAVVY",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25, top: 50),
                child: Image.asset('lib/images/video-game.png'),
              ),

              const SizedBox(height: 25),
              
              Text(
                "YOUR NINTENDO SWITCH GAMES CATALOG",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // ignore: prefer_const_constructors
              Text(
                "The ultimate companion for Nintendo fans!!",
                style: TextStyle(
                  color: Colors.grey,
                  height: 2,
                ),
              ),

              const SizedBox(height: 25,),

              MyButton(text: "Get Started"),


            ],
          ),
        ),
      );

  }
}