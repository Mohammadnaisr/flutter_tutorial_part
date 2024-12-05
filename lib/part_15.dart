//[AppBar action use করার নিয়ম]

  // (1)
import 'package:flutter/material.dart';

return Scaffold (
  AppBar:AppBar(
    title: Text("Inventory App"),
    titleSpacing: 10,
    toolbarWeight:60,
    toolbarOpacity: 1,
    elevation: 0,
    backgroundColor: colors.amber,
    actions: [
      IconButton(onPressed){},icon(Icons.comment),
      IconButton(onPressed){},icon(Icons.search),
      IconButton(onPressed){},icon(Icons.settings),
      IconButton(onPressed){},icon(Icons.email),
  
    ],
  ),
),


// (2)

//[SnackBar show করানো]

class HomeActivity extends StatelessWidget {
  const HomeActivity ({super.key});
  MySnackBar(messge.context){
    retrun ScaffoldMessanger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
}

action [
  IconButton (onPressed:(){MySnackBar("I am comments",context);}Icon(Icons.comment),
  IconButton(onPressed:({MySnackBar("I am search",context);}),Icon(Icons.search))
  )
]


// chat gpt

import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  void MySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Example"),
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("I am comments", context);
            },
            icon: const Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("I am search", context);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Center(
        child: Text("Press the AppBar icons to show SnackBars!"),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeActivity(),
  ));
}
