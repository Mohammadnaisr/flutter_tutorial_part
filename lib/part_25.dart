// ROW AND CONTAINER

import 'package:flutter/material.dart';

return Scaffold (
appBar:AppBar(
  title: Text("App"),
),
body:Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Container(height: 100, width: 100, child: Image.network("link"),
    )
    Container(height: 100, width: 100, child: Image.network("link"),
    )
    Container(height: 100, width: 100, child: Image.network("link"),
    )
    Container(height: 100, width: 100, child: Image.network("link"),
    )
  ],
)
)

// chat gpt

import 'package:flutter/material.dart';

class AppExample extends StatelessWidget {
  const AppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network(
              "https://via.placeholder.com/150", // Replace with your actual image link
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network(
              "https://via.placeholder.com/150", // Replace with your actual image link
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network(
              "https://via.placeholder.com/150", // Replace with your actual image link
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network(
              "https://via.placeholder.com/150", // Replace with your actual image link
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppExample(),
    ),
  );
}
