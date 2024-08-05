import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/buttons.dart';
import 'package:weed_detection_app/Pages/tips.dart';


class GetWeedDetails extends StatelessWidget {
  const GetWeedDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 40.0,),
                const Text("Get Detailed Information", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0,),
                const Image(image: AssetImage('images/details-snapshot.png'),),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: TipsMessage(message: 'Access comprehensive details about each weed species detected',),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Buttons(buttonText: 'Prev', onPressed: ()=> Navigator.of(context).pop()
                    ),
                    const SizedBox(width: 40.0,),
                    Buttons(buttonText: 'Next', onPressed: ()=> Navigator.pushNamed(context, '/onboard_screen_4')
                    ),
                  ],
                  ),
                  SkipButton(onPressed: ()=> Navigator.pushNamed(context, '/')
                  ),
              ],
              ),
                        ),
            ),
            ),
    );
  }
}