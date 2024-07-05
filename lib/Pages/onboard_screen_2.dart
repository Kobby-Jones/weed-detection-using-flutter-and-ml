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
                  const SizedBox(
                    height: 150.0,
                  ),
                  // An image demonstrating how to use the app
                  const Image(image: AssetImage("images/capture-weed.jpg")),
                  // Leave some vertical space before the tip message
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    // A tip message showing how to use the app
                    child: TipsMessage(
                      message:
                          "Use your camera to quickly identify weeds with just a snap",
                    ),
                  ),
                  // A row for the Next and the Previous Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // The Previous button. When clicked it will take you to the Previous page.
                      Buttons(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          buttonText: "Prev"),
                          // Leave some horizontal space between the two buttons
                      const SizedBox(
                        width: 40,
                      ),
                      //  The Next Button. When clicked, it will take you to the next available onboard screen
                      Buttons(
                        // A callback function to be passed as a parameter
                          onPressed: () {
                            // Navigator widget to take you to the desired page
                            Navigator.pushNamed(context, '/onboard_screen_3');
                          },
                          buttonText: "Next"),
                    ],
                  ),
                  // The skip button. When Clicked, it will skip all the onboard pages and take you directly to the home page
                  SkipButton(
                    // A callback function to be passed as parameter
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
