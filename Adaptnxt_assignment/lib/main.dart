import 'package:flutter/material.dart';
import 'package:untitled3/mycontainer.dart';
import 'package:untitled3/shall/main.dart';

void main() {
  runApp( MaterialApp( home: MyApps()));
}
class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar( leading: IconButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) =>MedicineScreen()));
          },
          icon: Icon(Icons.keyboard_arrow_left_outlined,size: 35,),
        ),title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Text("Device settings",
            style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 25),),
        ))),
        body: mycontainer(),
      ),
    );
  }
}
