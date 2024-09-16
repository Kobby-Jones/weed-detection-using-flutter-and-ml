import 'package:flutter/material.dart';

class DetectResultsScreen extends StatelessWidget {
  const DetectResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detect Results'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/saved_results');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text('Save'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.upload),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Weed Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 3),
                ),
                child: Image.network(
                  'https://via.placeholder.com/400',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Weed Name:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Name Here',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Confidence Level:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '90%',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                ),
                child: const Text('How to Manage'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Related Weeds',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 100,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    relatedWeedCard(
                        'Bermuda', 'https://via.placeholder.com/100'),
                    relatedWeedCard('Spear', 'https://via.placeholder.com/100'),
                    relatedWeedCard(
                        'Guinea', 'https://via.placeholder.com/100'),
                    relatedWeedCard(
                        'Purple', 'https://via.placeholder.com/100'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget relatedWeedCard(String name, String imageUrl) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 4),
        Text(
          name,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
