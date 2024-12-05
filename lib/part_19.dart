// navigation drawer এর ভিতর আছে
// 1. header
// 2. List
          //  (1)
import 'package:flutter/material.dart';

return Scaffold (
  appBar :AppBar (),
  drawer: Dreawer(
    child:ListView(
       children:[
        DreaserHeader(child:Text("Nasir")),
        ListTile(title:Text("Home")),
        ListTile(title:Text("Contact")),
        ListTile(title:Text("Profile")),
        ListTile(title:Text("Email")),
        ListTile(title:Text("Phone")),
    
       ])
  )
  )
)

             //  (2)

return scaffold(
  appBar:AppBar(),
  drawer:Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Text("Yasin")
          )
          ListTile(leading: Icon(Icons.Home),
          Title:Text("Home"),
          onTap: (){
            MySnackBar("I am home",context);

          },
          )
          ListTile(
            Leading:Icon(Icons.email),
            title:Text("Email"),
            onTap: (){
              MySnackBar(" I am email",context);
            },
          )
          ListTile(
            leading:Icon (Icons.phone),
            title:Text("phone"),
            onTap: (){
              MySnackBar("I am phone",context),
            },
          )
      ],
    ),
  )
 )

 //chat gpt

 import 'package:flutter/material.dart';

class NavigationDrawerExample extends StatelessWidget {
  const NavigationDrawerExample({super.key});

  void MySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer Example"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // Adds background color to the header
              ),
              child: Text(
                "Header Content",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                MySnackBar("I am Home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                MySnackBar("I am Email", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                MySnackBar("I am Profile", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Phone"),
              onTap: () {
                MySnackBar("I am Phone", context);
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
      home: NavigationDrawerExample(),
    ),
  );
}
