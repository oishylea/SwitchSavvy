import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/game.dart';
import 'package:to_do_app/models/shop.dart';
import 'pages/cart_page.dart';
import 'pages/game_detail_page.dart';
import 'pages/menu_page.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(DevicePreview(
    enabled: true, // Set to false when done testing
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true, // Add this line
        locale: DevicePreview.locale(context), // Add this line
        builder: DevicePreview.appBuilder, // Add this line
        home: const IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/menupage': (context) => const MenuPage(),
          '/game_detail': (context) => GameDetailPage(game: ModalRoute.of(context)!.settings.arguments as Game),
          '/cart': (context) => CartPage(),
        },
      ),
    );
  }
}
