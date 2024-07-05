import 'package:flutter/material.dart';

class GetWeedDetails extends StatelessWidget {
  const GetWeedDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Get Detailed Information", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                
              ],
              ),
          ),
            ),
            ),
    );
  }
}