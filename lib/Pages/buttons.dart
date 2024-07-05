import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String? buttonText;
  const Buttons({super.key, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xFF187F5A))),
      child: Text(
        "$buttonText",
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),
      ),
    );
  }
}
