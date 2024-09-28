import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/camera_screen.dart';
import 'package:weed_detection_app/Pages/detection_results.dart';
import 'package:weed_detection_app/Pages/home.dart';
import 'package:weed_detection_app/Pages/onboard_screen_2.dart';
import 'package:weed_detection_app/Pages/onboard_screen_3.dart';
import 'package:weed_detection_app/Pages/onboard_screen_4.dart';
import 'package:weed_detection_app/Pages/onboard_welcome_screen.dart';
import 'package:weed_detection_app/Pages/saved_results.dart';
import 'package:weed_detection_app/Pages/settings.dart';

Future<void> main() async {
// Ensure that plugin services are initialized before using them.
  WidgetsFlutterBinding.ensureInitialized();

// Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();  

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const WelcomePage(),
    routes: {
        '/help': (context) => const WelcomePage(),
        '/onboard_screen_2': (context) => const CaptureImageTip(),
        '/onboard_screen_3': (context) => const GetWeedDetails(),
        '/onboard_screen_4': (context) => OnboardScreen4(),
        '/camera_page' : (context) =>  TakePictureScreen(camera: firstCamera),
        '/results' : (context) => const DetectResultsScreen(),
        '/saved_results' : (context) => SavedResultsScreen(),
        '/settings' : (context) => const SettingsPage(),
    }
  ));
}
