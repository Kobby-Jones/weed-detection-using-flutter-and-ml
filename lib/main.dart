import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/home.dart';
import 'package:weed_detection_app/Pages/onboard_screen_2.dart';
import 'package:weed_detection_app/Pages/onboard_welcome_screen.dart';
// import 'package:weed_detection_app/Pages/home.dart';
// import 'package:weed_detection_app/Pages/onboard_welcome_screen.dart';
// import 'package:weed_detection_app/Pages/login.dart';

void main() {
  runApp(const WeedDetect());
}


class WeedDetect extends StatelessWidget {
  const WeedDetect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const HomePage(),
        '/home':(context) => const HomePage(),
        '/help':(context) => const WelcomePage(),
        '/onboard_screen_2':(context) => const CaptureImageTip()

      },
    );
  }
}