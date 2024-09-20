import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Add 'const' here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Simplified constructor with 'super.key'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App', // Title of the app
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple UI App'), // Title bar with app name
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center column
            children: <Widget>[
              const Text(
                'Welcome to the App!', // Welcome message
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20), // Spacing between widgets
              ElevatedButton(
                onPressed: () {
                  debugPrint(
                      'Button Clicked!'); // Replaces 'print' with 'debugPrint'
                },
                child: const Text('Click Me'),
              ),
              const SizedBox(height: 20), // More spacing
              Image.network(
                'https://images.pexels.com/photos/1275929/pexels-photo-1275929.jpeg?auto=compress&cs=tinysrgb&w=600', // Replace with actual image URL
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
