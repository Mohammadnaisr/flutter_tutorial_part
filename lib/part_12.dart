// Material App এর কি কি কাজ থাকে।
//color
//darkTheme
//debugShowChecked Mode Banner
//home
//title

import 'package:all_parts_flutter/activity&widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //এখানে return এর পর const use করা যাবে না । const use করলে darkTheme এ কাজ করবে না । কারণ const হচ্ছে Fixed.

      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
 

// Chat gpt 

 /*
 import 'package:flutter/material.dart';
import 'package:all_parts_flutter/activity&widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Corrected: Use `brightness` for dark mode.
        primaryColor: Colors.blue,
      ),
      themeMode: ThemeMode.system, // Added: Use system theme (light/dark).
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter"),
      ),
      body: const Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

 
 
  */

