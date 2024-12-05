//Floating Button

import 'package:flutter/material.dart';

return Scaffold(
  appBar:AppBar(),
  FloatingActionButton:FloatingActionButton(
    elevation: 10,
    child: Icon(Icons.add),
    backgroundColor: Colors.green,
    onPressed: (){
      MySnackBar("I am floating action button",context),
    },
  )
)


// chat gpt

import 'package:flutter/material.dart';

class FloatingButtonExample extends StatelessWidget {
  const FloatingButtonExample({super.key});

  void MySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Action Button Example"),
      ),
      body: const Center(
        child: Text("Press the Floating Action Button!"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10, // Adds a shadow effect
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackBar("I am floating action button", context);
        },
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FloatingButtonExample(),
    ),
  );
}
