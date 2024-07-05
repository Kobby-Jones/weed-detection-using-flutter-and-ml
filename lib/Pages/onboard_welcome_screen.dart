import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/buttons.dart';
import 'package:weed_detection_app/Pages/tips.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // Place all the components in the center of the page
          body: Center(
        // Arange the components in a column order
        child: Column(
          children: <Widget>[
            // Leave some space at the top with sized box
            const SizedBox(
              height: 120.0,
            ),
            // The camea Icon
            const Icon(Icons.camera_alt),
            // The Welcome text
            const Text(
              "Welcome to",
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
            ),
            const Text(
              "WeedRadar",
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
            ),
            // App Logo
            const Image(
              image: AssetImage("images/weedradar-logo.png"),
              width: 160.0,
              height: 160.0,
            ),
            // Leave some horizontal space
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                // Tip text
                child: TipsMessage(
                  message:
                      "Discover how we can help you identify and manage weeds effectively",
                )),
            // The next button
            // When Clicked on the Next button, it will take you to the onboard screen page
            Buttons(
              onPressed: () {
                Navigator.pushNamed(context, '/onboard_screen_2');
              },
              buttonText: "Next",
            ),
            // The skip button
            // When Click on the Skip button it mut skip the onboard screens and take you to the home page directly
            SkipButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ),
      )),
    );
  }
}
