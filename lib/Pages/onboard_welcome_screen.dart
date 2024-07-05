import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/buttons.dart';
import 'package:weed_detection_app/Pages/tips.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Place all the components in the center of the page
        body: Center(
          // Arange the components in a column order
          child: Column(
            children: <Widget>[
              // Leave some space at the top with sized box
              SizedBox(height: 120.0,),
              // The camea Icon
              Icon(Icons.camera_alt),
              // The Welcome text
              Text("Welcome to", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),),
              Text("WeedRadar", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),),
              // App Logo
              Image(image: AssetImage("images/weedradar-logo.png"), width: 160.0, height: 160.0,),
              // Leave some horizontal space
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                // Tip text
                child: TipsMessage(message: "Discover how we can help you identify and mange weeds effectively",)
              ),
              // The next button
              // When Clicked on the Next button, it will take you to the onboard screen page
              Buttons(buttonText: "Next",),
              // The skip button
              // When Click on the Skip button it mut skip the onboard screens and take you to the home page directly
              SkipButton()
            ],
          ),
        )
      ),
    );
  }
}