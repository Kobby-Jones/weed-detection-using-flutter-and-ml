import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/buttons.dart';
import 'package:weed_detection_app/Pages/tips.dart';

class CaptureImageTip extends StatelessWidget {
  const CaptureImageTip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Center the entire screen
        body: Center(
        // Leave some left and right padding
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          // Arrage the widgets in a column order
          child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              // Leave some space on top of the page
              const SizedBox(height: 150.0,),
              // An image demonstrating how to use the app
              const Image(image: AssetImage("images/capture-weed.jpg")),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TipsMessage(message: "Use your camera to quickly identify weeds with just a snap",),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Buttons(buttonText: "Prev"),
                   SizedBox(width: 40,),
                   Buttons(buttonText: "Next"),
                   
                   
              ],
              ),
              TextButton(onPressed: (){}, child: const Text("Skip", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 32, 79, 222)),
                ),
                ),
                  ],
                  ),
          ),
        ),
      ),
      ),
    );
  }
}