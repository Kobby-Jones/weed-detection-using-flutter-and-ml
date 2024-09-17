import 'package:flutter/material.dart';
// Entry point of the Flutter application

// StatelessWidget representing the home page of the app
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Row widget to arrange the children horizontally
        title: isSearching
            ? const SearchBar()
            : Row(
                // Space out the children
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Title text
                  const Text("Home"),
                  // Search icon
                  // If the user clicks on the search icon, it should display a search bar for the user to search for what he or she want. The search icon is first displayed, disappear after it is being clicked and then shows the search bar

                  IconButton(
                      onPressed: () {
                        setState(() {
                          isSearching = !isSearching;
                        });
                      },
                      icon: const Icon(Icons.search),
                      color: const Color(0xFF187F5A)),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                      icon: const Icon(Icons.settings),
                      color: const Color(0xFF187F5A)),
                  // CircleAvatar widget for displaying the avatar
                  const CircleAvatar(
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Givesome space between the appbar and the logo
              const SizedBox(
                height: 70.0,
              ),
              // The App Log
              const Image(
                image: AssetImage("images/weedradar-logo.png"),
                width: 160.0,
                height: 160.0,
              ),
              // The home Title
              const Text("WEEDRADAR",
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  )),
              // A card to give a brief info about the app
              const Card(
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 50.0, left: 10.0, top: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Real-Time Weed Detect",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Track and Manage Weed",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Detect Button
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/camera_page');
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xFF187F5A))),
                      child: const Text(
                        "Detect",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.white),
                      )),
                  const SizedBox(
                    width: 40.0,
                  ),
                  // Manage Button
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/results');
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xFF187F5A))),
                      child: const Text(
                        "Manage",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.white),
                      )),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    // An Inkwell widget to make the help CircleAvatar clickable
                    GestureDetector(
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.question_mark_rounded,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () => {Navigator.pushNamed(context, '/help')},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
