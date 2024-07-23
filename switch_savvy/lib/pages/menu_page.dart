import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/components/button.dart';
import 'package:to_do_app/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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

                const SizedBox(height: 15,),


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
        )
      ],
      ),
   
    );

  }
}
