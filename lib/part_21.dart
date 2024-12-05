//Header

//[Navigation Drawer সাজানো]

import 'package:flutter/material.dart';

drawer:Drawer(
  child:ListView(
    children: [
      DrawerHeader(
        padding: EdgeInsets.all(0),
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: colors.white),
          accountName: Text("Nasir Uddin",style:TextStyle(color:colors.black)),
          accountEmail: Text("Infographic.com",style: (color:Colors.black),),
          currentAccountPicture: Image.natework("link"),
          onDetailsPressed: (){MySnackBar("This is profile",context)},
        ),
      )
    ],
  )
)

// chat gpt

import 'package:flutter/material.dart';

class NavigationDrawerWithHeader extends StatelessWidget {
  const NavigationDrawerWithHeader({super.key});

  void MySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer with Header"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero, // Removes default padding
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white, // Header background color
                ),
                accountName: const Text(
                  "Nasir Uddin",
                  style: TextStyle(color: Colors.black), // Text color for name
                ),
                accountEmail: const Text(
                  "Infographic.com",
                  style: TextStyle(color: Colors.black), // Text color for email
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://via.placeholder.com/150", // Replace with a valid link
                  ),
                ),
                onDetailsPressed: () {
                  MySnackBar("This is profile", context);
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                MySnackBar("Navigating to Home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                MySnackBar("Opening Email", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                MySnackBar("Opening Profile", context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Navigation Drawer Example Body"),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationDrawerWithHeader(),
    ),
  );
}
