//Bottom Tab Nav
//icon+name

import 'package:flutter/material.dart';

return Scaffold (
  appBar:AppBar(),
  floatingActionButton:FloatingActionButton(),
  bottomNavigationBar:BottomNavigationBar(
    currentIndex: 2,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.Home),label:"Home")
      BottomNavigationBarItem(icon: Icon(Icons.Home),label:"context")
      BottomNavigationBarItem(icon: Icon(Icons.Home),label:"profile")
      ],
      onTap: (int index){
        if(index == 0){
          MySnackBar("I am home button",context),
        }
        if(index == 1){
          MySnackBar("I am home button",context),
        }
        if(index == 2){
          MySnackBar("I am home button",context),
        }
      },
  )
  
  // chat gpt

  import 'package:flutter/material.dart';

class BottomNavExample extends StatelessWidget {
  const BottomNavExample({super.key});

  void MySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar Example"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar("Floating Action Button Pressed", context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("I am the Home button", context);
          } else if (index == 1) {
            MySnackBar("I am the Search button", context);
          } else if (index == 2) {
            MySnackBar("I am the Profile button", context);
          }
        },
      ),
      body: const Center(
        child: Text("Select an option from the Bottom Navigation Bar"),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavExample(),
    ),
  );
}
