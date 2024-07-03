import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body:  Center(
          child: SingleChildScrollView(
            // Place all the elements in a vertical column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // The logo Image
                const Image(image: AssetImage("images/weedradar-logo.png"),
                height: 200.0,
                ),
                // Give some vertical space
                const SizedBox(height: 20.0,),
               // Header Text
               const Text(
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 28.0,
                ),
                "WeedRadar"
                ),
                const Text(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                  "Identify And Manage Weeds Effectively"
                  ),
                  // The Login Form
                  // Wrap it up with some padding
                  const SizedBox(height: 25.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Form(
                      child: 
                          Column(
                            children: [
                               // Email TextField
                              TextFormField(
                                // Give it some decoration
                                decoration: const InputDecoration(
                                  // Give the TextField Outline
                                  border: OutlineInputBorder(
                                    // Set the border radius
                                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                                  ),
                                  // Add the email icom
                                  icon: Icon(Icons.email),
                                  // Reduce the height of the TextField
                                  contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                                  // Label Text
                                  label: Text("Email")
                                ),
                              ),
                              const SizedBox(height: 10.0,),
                               // Password TextField
                              TextFormField(
                                // Hide Characters as you type
                                obscureText: true,
                                // Give it some decoration
                                decoration: const InputDecoration(
                                  // Give the TextField Outline
                                  border: OutlineInputBorder(
                                    // Set the border radius
                                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                                  ),
                                  // Add the password icom
                                  icon: Icon(Icons.lock),
                                  // Reduce the height of the TextField
                                  contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                                  // Label Text
                                  label: Text("Password")
                                ),
                              ),
                              const SizedBox(height: 3.0,),
                              // Forgot Your password text
                               Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  TextButton(onPressed: (){}, child: const Text("Forgot your password?"))
                                ],
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(onPressed: (){},
                                  style: const ButtonStyle(
                        // Background color
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        // Text color
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        // TextStyle for the button text
                        textStyle: MaterialStatePropertyAll(TextStyle(
                          // Bold font weight
                          fontWeight: FontWeight.bold,
                        )),
                        // Horizontal padding
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 60.0)),
                      ),
                                   child: const Text("Enter"))
                                ],
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text("Don't have an account?"),
                                  TextButton(onPressed: (){},
                                  style: const ButtonStyle(
                                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                                    textStyle: MaterialStatePropertyAll(TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))
                                  ), child: const Text("Sign Up"),
                                  )
                                ],
                              )
                            ],
                          )
                      
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
