// SIMPLE FROM

class HomeActivity extends StatelessWidget{
  const HomeActivity ({super.key});
  @override 
  Widget build (BuildContext context){
    return Scffold (
      appBar:AppBar(
        title:Text("MyApp"),
      )
      body:Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children:[
          Padding(padding:EdgeInsepts.all(20),child:TextField(decoration:InputDecoration(border:OutlineInputBorder(),labelText:'First Name'),

           Padding(padding:EdgeInsepts.all(20),child:TextField(decoration:InputDecoration(border:OutlineInputBorder(),labelText:'First Name'),

            Padding(padding:EdgeInsepts.all(20),child:TextField(decoration:InputDecoration(border:OutlineInputBorder(),labelText:'First Name'),

         Padding (padding:EdgeInsepts.all(20),child:ElevatedButton(onPressed:(){},child:Text:('Submit'),),)
          
          ))
        ]
      )
    )
  }
}

// chat gpt

import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ),
        ],
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
