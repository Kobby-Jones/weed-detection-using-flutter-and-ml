import 'package:flutter/material.dart';

// A button to be called with custom text based on the function
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
// The skip button to be called on all the required pages
class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: const Text("Skip", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 32, 79, 222)),
              ),
              );
  }
}
