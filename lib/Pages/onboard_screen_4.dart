import 'package:flutter/material.dart';
import 'package:weed_detection_app/weeds_details/history.dart';

class OnboardScreen4 extends StatelessWidget {
  const OnboardScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WeedList> weeds = [
      WeedList(
          id: "1",
          name: "Siam Weed",
          description:
              "Chromolaena odorata is a rapidly growing perennial herb. It is a multi-stemmed shrub which grows up to 2.5 m (100 inches) tall in open areas. It has soft stems but the base of the shrub is woody. In shady areas it becomes etiolated and behaves as a creeper, growing on other vegetation",
          imageUrl: 'images/siam weed.jpg'),
      WeedList(
          id: "2",
          name: "Guinea Grass",
          description:
              "Chromolaena odorata is a rapidly growing perennial herb. It is a multi-stemmed shrub which grows up to 2.5 m (100 inches) tall in open areas. It has soft stems but the base of the shrub is woody. In shady areas it becomes etiolated and behaves as a creeper, growing on other vegetation",
          imageUrl: 'images/guinea grass.jpeg'),
      WeedList(
          id: "3",
          name: "Bermuda Grass",
          description:
              "Chromolaena odorata is a rapidly growing perennial herb. It is a multi-stemmed shrub which grows up to 2.5 m (100 inches) tall in open areas. It has soft stems but the base of the shrub is woody. In shady areas it becomes etiolated and behaves as a creeper, growing on other vegetation",
          imageUrl: 'images/bermuda grass.jpg')
    ];
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Save and Track Your\n Results",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                   style: TextStyle(fontWeight: FontWeight.bold),
                  "History"
                  ),
                ],
              ),
            Expanded(
              child: ListView.builder(
                  itemCount: weeds.length,
                  itemBuilder: (context, index) {
                    final weed = weeds[index];
                    return ListTile(
                      leading: Image.asset(weed.imageUrl),
                      title: Text(
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        weed.name
                        ),
                      subtitle: Text('${weed.description.substring(0, 100)}...'),
              
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
