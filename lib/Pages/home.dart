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
        //  The Body Start here
        // Position all the components in the center of the page
        body: Center(
          // Arrange the components in a column order
          child: Column(
            children: <Widget>[
              // Givesome space between the appbar and the logo
              const SizedBox(height: 70.0,),
              // The App Log
              const Image(image: AssetImage("images/weedradar-logo.png"), width: 160.0, height: 160.0,),
              // The home Title
              const Text("WEEDRADAR", style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold,)),
              // A card to give a brief info about the app
              const Card(child: Padding(
                padding: EdgeInsets.only(right: 50.0, left: 10.0, top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("Real-Time Weed Detect", style: TextStyle(fontSize:24.0, fontWeight: FontWeight.bold),),
                    Text("Track and Manage Weed", style: TextStyle(fontSize:15.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20.0,),
                    Icon(Icons.camera_alt_outlined, color: Colors.black,)
                  ],
                ),
              ),),
              const SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Detect Button
                ElevatedButton(onPressed: (){}, style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF187F5A))), child: const Text("Detect", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white),)),
                const SizedBox(width: 40.0,),
                // Manage Button 
                ElevatedButton(onPressed: (){}, style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF187F5A))), child: const Text("Manage",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white),)),
              ],),
              const SizedBox(height: 20.0,),
               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                   CircleAvatar(backgroundColor: Colors.black,child: Icon(Icons.question_mark_rounded, color: Colors.white,),)
                               ],),
               )
            ],
          ),
        ),
        
      ),
    );
  }
}
