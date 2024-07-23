import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'pages/menu_page.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(DevicePreview(
    enabled: true, // Remove this line when done
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // Add this line
      locale: DevicePreview.locale(context), // Add this line
      builder: DevicePreview.appBuilder, // Add this line
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
      },
    );
  }
}
