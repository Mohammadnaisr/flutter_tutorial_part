// FLUTTER BUTTON
//Text Button
// Out line Button

import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
  @override

  Widget build(BuildContext context) {
    padding:EdgeInsets.all(25);
    backgroundColor:Colors.white,
    shape:RoundedRectangleBorder(
      borderRadius:BorderRadius.all(Radius.circular(40))
       );
       return Scaffold(
        appBar: AppBar(
          title: Text("App"),
          body:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){MySnackBar("I am a text Button",context)},
               child: Text("Text Button")),
               
              ElevatedButton(onPressed: (){MySnackBar("I am a text Button",context)},
               child: Text("Eleveted Button")),
               
              OutlinedButton(onPressed: (){MySnackBar("I am a text Button",context)},
               child: Text("Outline Button")),
               
            ],
          )
        ),
       );
  }
}

//chat gpt

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
        title: const Text("App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                MySnackBar("I am a Text Button", context);
              },
              child: const Text("Text Button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                MySnackBar("I am an Elevated Button", context);
              },
              child: const Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                MySnackBar("I am an Outlined Button", context);
              },
              child: const Text("Outlined Button"),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    ),
  );
}

