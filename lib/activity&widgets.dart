// // Part 10;


// import 'package:all_parts_flutter/main.dart';
// import 'package:flutter/material.dart';

// //1
// void main (){
//   runApp(const MyApp())
// }

// //2

// class MyApp extends StatelessWidget{
//   const MyApp ({super.key});
//   @override
//   Widget build(BuildContext context) {
    
// return const MaterialApp(
//   home: HomeActivity());
//   }
// }

// //3

// class HomeActivity extends StatelessWidget{
//   const HomeActivity({super.key});
//   @override
//   Widget build(BuildContext context) {
   
//    return Scaffold(
//     appBar: AppBar(title: 
//     const Text("Hello")),
//     body: const Text("Hello World"),
  
//    );
     
//   }
// }


import 'package:flutter/material.dart';

// 1
void main() {
  runApp(const MyApp()); // Added missing semicolon
}

// 2
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

// 3
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: const Center( // Wrap the text in Center widget for proper alignment
        child: Text("Hello World"),
      ),
    );
  }
}
