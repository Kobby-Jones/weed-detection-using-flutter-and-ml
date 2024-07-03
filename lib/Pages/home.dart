import 'package:flutter/material.dart';

// Entry point of the Flutter application

// StatelessWidget representing the home page of the app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disable the debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // Row widget to arrange the children horizontally
          title: const Row(
            // Space out the children
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Title text
              Text("Home"),
              // Search icon
              Icon(Icons.search, color: Color(0xFF187F5A)),
              Icon(Icons.settings, color: Color(0xFF187F5A)),
              // CircleAvatar widget for displaying the avatar
              CircleAvatar(
                // Radius of the avatar
                radius: 8.0,
                // Avatar image
                backgroundImage: AssetImage("images/kobby-pic.jpg"),
              )
            ],
          ),
        ),
         
        body: const Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 70.0,),
              Image(image: AssetImage("images/weedradar-logo.png"), width: 160.0, height: 160.0,),
              
            ],
          ),
        ),
        
      ),
    );
  }
}
