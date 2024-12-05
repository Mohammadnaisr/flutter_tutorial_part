//  BODY CONTAINER

import 'package:flutter/material.dart';

return Scaffold(
  appBar:AppBar(
    title: Text("Inventory App"),
  ),
  body:container(
    height:250,
    width:250,
    alignment:Alignment.topCenter,
    margin:EdgeInsets.all(30),
    Padding(EdgeInsets.all(40)),
    decoration:BoxDecoration(
      color: Colors.amber,
      border: Border.all(color: Colors.block.width:6),
      child:Image.network("link"),
    )
  )
)

// chat gpt

import 'package:flutter/material.dart';

class InventoryApp extends StatelessWidget {
  const InventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
      ),
      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(40), // Corrected padding placement
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
            color: Colors.black, // Fixed color name
            width: 6, // Added the width value
          ),
        ),
        child: Image.network(
          "https://via.placeholder.com/150", // Replace with a valid image link
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InventoryApp(),
    ),
  );
}
