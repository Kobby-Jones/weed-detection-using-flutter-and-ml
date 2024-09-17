import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/profile_pic.jpg'),
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              // Handle help button press
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('Kobby_Jones', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('kobby@gmail.com', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Handle Edit Profile tap
                },
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              const Divider(height: 40, thickness: 1),
              const Text(
                'Preferences',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Theme', style: TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      const Text('Light Mode', style: TextStyle(fontSize: 16)),
                      Switch(
                        value: true,
                        onChanged: (value) {
                          // Handle theme toggle
                        },
                      ),
                      const Icon(Icons.settings),
                    ],
                  ),
                ],
              ),
              const Divider(height: 40, thickness: 1),
              const Text(
                'Privacy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Handle Change Password tap
                },
                child: const Text(
                  'Change Password',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Handle Privacy Policy tap
                },
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              const Divider(height: 40, thickness: 1),
              const Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('App Version', style: TextStyle(fontSize: 16)),
                  Text('1.0', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Handle Terms of Service tap
                },
                child: const Text(
                  'Terms of Service',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Handle Contact Support tap
                },
                child: const Text(
                  'Contact Support',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
