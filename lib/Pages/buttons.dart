import 'package:flutter/material.dart';

// A button to be called with custom text based on the function
class Buttons extends StatelessWidget {
  final String? buttonText;
  final VoidCallback onPressed;

  const Buttons({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF187F5A))),
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
  final VoidCallback onPressed;
  const SkipButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text(
        "Skip",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 32, 79, 222)),
      ),
    );
  }
}utton with will end the onboard screens
// The Done b
class DoneButton extends StatelessWidget {
  final VoidCallback onPressed;
  const DoneButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text(
        "Done",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 32, 79, 222)),
      ),
    );
  }
}
