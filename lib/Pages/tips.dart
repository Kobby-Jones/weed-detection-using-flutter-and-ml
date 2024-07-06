import 'package:flutter/material.dart';

class TipsMessage extends StatelessWidget {
  final String? message;
  const TipsMessage({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Text("$message", style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900), textAlign: TextAlign.center,);
  }
}
