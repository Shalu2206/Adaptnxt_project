import 'package:flutter/material.dart';
import 'package:untitled3/secmaincontainer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectTunePage(),
    );
  }
}

class SelectTunePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.black,size: 30,),
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => secmainContainer(),));
              // Implement back button functionality if needed
            },
          ),
          backgroundColor: Colors.white, // White background for the AppBar
          elevation: 0, // Remove shadow from AppBar
        ),
        body: Container(
            color: Colors.white, // White background for the body
            child: ListView(
              children: [
                Text(
                  'Select tune',
                  style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center, // Center align the title text
                ),
                Center(
                  child: ListTile(
                    title: Text(
                      'Chimes',
                      textAlign: TextAlign.center, // Center align the text
                      style: TextStyle(color: Colors.grey),
                    ),
                    enabled: false, // Disable the tile to match the inactive state in the image
                  ),
                ),
                Center(
                  child: Container(
                    width: 150, // Adjust the width of the divider
                    child: Divider(
                      thickness: 1, // Adjust the thickness of the divider
                      color: Colors.black, // Color of the divider
                    ),
                  ),
                ),
                Center(
                  child: ListTile(
                    title: Text(
                      'Rooster',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),// Center align the text
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 150, // Adjust the width of the divider
                    child: Divider(
                      thickness: 1, // Adjust the thickness of the divider
                      color: Colors.black, // Color of the divider
                    ),
                  ),
                ),
                Center(
                  child: ListTile(
                    title: Text(
                      'Sweet piano',
                      textAlign: TextAlign.center, // Center align the text
                      style: TextStyle(color: Colors.grey),
                    ),
                    enabled: false, // Disable the tile to match the inactive state in the image
                  ),
                ),
                // Add more ListTiles here if needed
              ],
            ),),
        );
    }
}
