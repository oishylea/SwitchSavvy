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
        padding: const EdgeInsets.only(left: 25, top: 40, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "SWITCH SAVVY",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Image.asset('lib/images/video-game.png'),
            ),
            const SizedBox(height: 18),
            Text(
              "YOUR NINTENDO SWITCH GAMES CATALOG",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
            const Text(
              "The ultimate companion for Nintendo fans!!",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                height: 2,
              ),
            ),
            MyButton(
              text: "Get Started",
              onTap: () {
                print("Navigating to Menu Page"); // Debug print
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
