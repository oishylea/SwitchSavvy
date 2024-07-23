import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap});


@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap,
  
  child: Container(
    width: double.infinity, // Set the width to fill the parent container
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 232, 130),
      borderRadius: BorderRadius.circular(30),
    ),
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(width: 10),
        const Icon(Icons.arrow_forward),
      ],
    ),
  ),
  );
}

}