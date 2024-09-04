import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/secmaincontainer.dart';

class mycontainer extends StatefulWidget {
  const mycontainer({super.key});

  @override
  State<mycontainer> createState() => _mycontainerState();
}

class _mycontainerState extends State<mycontainer> {
bool _lights = false;
bool _lights1 = false;
bool _lights2 = false;
bool _lights3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(reverse: false,
          scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children:[ Column(
          children: [
            Container(width: double.infinity,
              height: 300,
              margin: EdgeInsets.only(top: 17,bottom: 0,right: 17,left: 17),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueAccent) ),
              child: Column(
                children: [Expanded(flex: 2,child:Container(
                  padding: EdgeInsets.only(left: 18,top: 15 ,right: 18),
                    width:double.infinity,
                    child: Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Set vaction time"),
                        CupertinoSwitch(value:_lights, onChanged: (bool value) {
                          setState(() {
                            _lights = value;
                          });
                        })
                      ],
                    ))),
                ),
                  Expanded(child: Container(
                    width:double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Start date & time",),
                        ),
                    Container(padding: EdgeInsets.only(top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'DD / MM / YYYY                HH:MM',
                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(25),
                          ))),
                    )
                      ],
                    )),flex: 4,
                  ),
                  Expanded(child: Container(width:double.infinity,padding: EdgeInsets.all(15)
                  ,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("End date & time"),
                      Container(padding: EdgeInsets.only(top: 10),
                        child: TextField(decoration: InputDecoration(
                            labelText: 'DD / MM / YYYY                HH:MM',
                            // Set border for enabled state (default)
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Colors.black26),
                              borderRadius: BorderRadius.circular(25),
                            ))),
                      )
                    ],
                  ),),flex: 4,)
                ],

              ),

            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: EdgeInsets.only(left: 17,right:17,top: 5,bottom: 1 ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black38) ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0 ),
                    child: Text("Show meds name"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:18.0),
                    child: CupertinoSwitch(value:_lights1, onChanged: (bool value) {
                      setState(() {
                        _lights1 = value;
                      });
                    }),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: EdgeInsets.only(left: 17,right:17,top: 5,bottom: 1 ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black38) ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0 ),
                    child: Text("Notify pharma to autofill"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:18.0),
                    child: CupertinoSwitch(value:_lights2, onChanged: (bool value) {
                      setState(() {
                        _lights2 = value;
                      });
                    }),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: EdgeInsets.only(left: 17,right:17,top: 5,bottom: 1 ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black38) ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0 ),
                    child: Text("Add sorry time"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:18.0),
                    child: CupertinoSwitch(value:_lights3, onChanged: (bool value) {
                      setState(() {
                        _lights3 = value;
                      });
                    }),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 65,
              margin: EdgeInsets.only(left: 17,right:17,top: 5,bottom: 1 ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black38) ),
              child: Padding(
                padding: EdgeInsets.only(left: 18.0,top:15 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Occupied cabinets"),
                    Text("1, 2, 3, 4, 5")
                  ],
                ),
              ),
            ),

            Container(child: secmainContainer())

          ],
        ),
      ]),
    );
  }
}

    