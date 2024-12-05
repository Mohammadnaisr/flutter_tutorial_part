//ALERT DIALOUG

import 'package:all_parts_flutter/activity&widgets.dart';
import 'package:all_parts_flutter/part_13.dart';
import 'package:flutter/material.dart';

const HomeActivity ({super.key});
MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(snackBar(context:Text(message)));
}
MyAlertDialog(context){
  return showDialog(
    context: context,
     builder: (BuildContext context{
      return Expanded(
        child:AlertDialog(
          title:Text("Alert"),
          content:Text("Do you want to delete"),
          action:[
            TextButton(onPressed:(){
              MySnackBar("Delete Success", context);
              Navigator.of(context).pop();

            }child:Text("Yes")
            );
            TextButton(onPressed:({Navigator.of(context).pop();},child:Text("No"),))
          ]
        )
      )
     }
     @override
     Widget build(BuildContext context){
      return Scaffold (
        appBar:AppBar(
          title:Text("MyApp"),
          body:Center(
            child:ElevatedButton(child:Text("click Me"),onPressed:(){
              MyAlertDialog(context)
            })
          )
        )
      )
     }
     )
}

//chat gpt

import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  // SnackBar function to show a message
  void MySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // AlertDialog function to show the confirmation dialog
  void MyAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Do you want to delete?"),
          actions: [
            TextButton(
              onPressed: () {
                MySnackBar("Delete Success", context);
                Navigator.of(context).pop();
              },
              child: const Text("Yes"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("No"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            MyAlertDialog(context); // Call the alert dialog on button press
          },
          child: const Text("Click Me"),
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
