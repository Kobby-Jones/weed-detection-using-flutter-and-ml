import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/camera_screen.dart';
import 'dart:async';
// import 'package:weed_detection_app/Pages/search_test.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
// Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TakePictureScreen(
      camera: firstCamera,
    ),
  ));
}


