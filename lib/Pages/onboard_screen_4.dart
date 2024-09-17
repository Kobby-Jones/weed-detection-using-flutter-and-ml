// import 'package:flutter/material.dart';
// import 'package:weed_detection_app/weeds_details/history.dart';

// class OnboardScreen4 extends StatelessWidget {
//   const OnboardScreen4({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<WeedList> weeds = [
//       WeedList(
//           id: "1",
//           name: "Siam Weed",
//           description:
//               "Chromolaena odorata is a rapidly growing perennial herb. It is a multi-stemmed shrub which grows up to 2.5 m (100 inches) tall in open areas. It has soft stems but the base of the shrub is woody. In shady areas it becomes etiolated and behaves as a creeper, growing on other vegetation",
//           imageUrl: 'images/siam weed.jpg'),
//       WeedList(
//           id: "2",
//           name: "Guinea Grass",
//           description:
//               "Chromolaena odorata is a rapidly growing perennial herb. It is a multi-stemmed shrub which grows up to 2.5 m (100 inches) tall in open areas. It has soft stems but the base of the shrub is woody. In shady areas it becomes etiolated and behaves as a creeper, growing on other vegetation",
//           imageUrl: 'images/guinea grass.jpeg'),
//       WeedList(
//           id: "3",
//           name: "Bermuda Grass",
//           description:
//               "Chromolaena odorata is a rapidly growing perennial herb. It is a multi-stemmed shrub which grows up to 2.5 m (100 inches) tall in open areas. It has soft stems but the base of the shrub is woody. In shady areas it becomes etiolated and behaves as a creeper, growing on other vegetation",
//           imageUrl: 'images/bermuda grass.jpg')
//     ];
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             const SizedBox(
//               height: 40.0,
//             ),
//             const Text(
//               textAlign: TextAlign.center,
//               "Save and Track Your\n Results",
//               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//             ),
//             const Divider(),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                    style: TextStyle(fontWeight: FontWeight.bold),
//                   "History"
//                   ),
//                 ],
//               ),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: weeds.length,
//                   itemBuilder: (context, index) {
//                     final weed = weeds[index];
//                     return ListTile(
//                       leading: Image.asset(weed.imageUrl),
//                       title: Text(
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(fontWeight: FontWeight.bold),
//                         weed.name
//                         ),
//                       subtitle: Text('${weed.description.substring(0, 100)}...'),
              
//                     );
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:weed_detection_app/Pages/buttons.dart';
import 'package:weed_detection_app/Pages/tips.dart';

class OnboardScreen4 extends StatelessWidget {
  OnboardScreen4({super.key});
  final List<PlantDetection> plantDetections = [
    PlantDetection(
      name: 'Bermuda Grass',
      image: 'images/bermuda grass.jpg',
      description: 'Chromolaena odorata is a rapidly growing perennial herb. It is a multi-stemmed shrub which grows up to 2.5 m (100 inches) tall in open areas.',
    ),
    PlantDetection(
      name: 'Guinea Grass',
      image: 'images/guinea grass.jpeg',
      description: 'Lorem ipsum dolor sit amet consectetur.',
    ),
    PlantDetection(
      name: 'Purple Nutsedge',
      image: 'images/bermuda grass.jpg',
      description: 'Lorem ipsum dolor sit amet consectetur.',
    ),
    PlantDetection(
      name: 'Siam Weed',
      image: 'images/siam weed.jpg',
      description: 'Lorem ipsum dolor sit amet consectetur.',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save and Track your Result'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: plantDetections.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    plantDetections[index].image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(plantDetections[index].name),
                  subtitle: Text(plantDetections[index].description)
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const TipsMessage(message: 'Save your detection results and keep track of your findings over time.',),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Buttons(buttonText: "Prev", onPressed: () => Navigator.of(context).pop()),

                  DoneButton(onPressed: () => Navigator.pushNamed(context, '/')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlantDetection {
  final String name;
  final String image;
  final String description;

  PlantDetection({
    required this.name,
    required this.image,
    required this.description,
  });
}
