//AppBar এ যা যা আছে
//action
//title
//backgroundColor
//elevation
//shape

import 'package:flutter/material.dart';

return Scaffold (
  appBar : AppBar(
    title: text("InventoryApp"),
    titleSpacing: 0,
    // or, centertitle:true,
    toolbar Weight: 60,
    toolbarOpacity: 1, 
    elevation: 0,
    backgroundColor: Colors.amber,
  );
);



// chat gpt

import 'package:flutter/material.dart';

class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InventoryApp"), // Corrected 'text' to 'Text'
        titleSpacing: 0, // Works or can use centerTitle: true for centering
        toolbarHeight: 60, // Corrected 'toolbar Weight' to 'toolbarHeight'
        toolbarOpacity: 1.0, // Correct value for opacity
        elevation: 0, // Removes shadow under the AppBar
        backgroundColor: Colors.amber, // Sets AppBar background color
      ),
      body: const Center(
        child: Text("Welcome to InventoryApp!"),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InventoryApp(),
  ));
}
