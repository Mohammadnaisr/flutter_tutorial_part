//BODY

import 'package:flutter/material.dart';

body:Center(
  child:Image.network("link"),
  //or,Text("text")
)

// chat gpt

import 'package:flutter/material.dart';

class BodyExample extends StatelessWidget {
  const BodyExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://via.placeholder.com/150", // Replace with a valid image link
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  "Image failed to load",
                  style: TextStyle(color: Colors.red),
                );
              },
            ),
            const SizedBox(height: 20), // Add spacing
            const Text(
              "Example Text",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BodyExample(),
    ),
  );
}
