import 'package:flutter/material.dart';
import 'package:untitled3/select/snooz.dart';
import 'package:untitled3/select/strength.dart';
import 'package:untitled3/select/tune.dart';

class secmainContainer extends StatefulWidget {
  const secmainContainer({super.key});

  @override
  State<secmainContainer> createState() => _secmainContainerState();
}

class _secmainContainerState extends State<secmainContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      margin: EdgeInsets.only(top: 9,bottom: 0,right: 17,left: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black38) ),
      child: Column(
        children: [Expanded(flex:4,child:Container(width: double.infinity,
        child:Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
          Padding(padding:EdgeInsets.only(top: 10,left: 18),child: Text("Alarm settings",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),),
          Padding(padding:EdgeInsets.only(top: 8,left: 18),child: Text("Alarm tune",
           ),),
          Container(padding:EdgeInsets.only(left: 14,right: 14,top: 3),child:TextField(
          decoration: InputDecoration(
          labelText: 'Rooster',
              suffixIcon: IconButton(
                icon: Icon(Icons.keyboard_arrow_down_outlined,size: 30),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectTunePage(),));
                },
              ),
              // Set border for enabled state (default)
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black26),
                borderRadius: BorderRadius.circular(25),
              ))),)
        ],) ,)),
        Expanded(flex:3,child: Container(child:
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding:EdgeInsets.only(top: 8,left: 18),child: Text("Alarm strength",
              ),),
              Container(padding:EdgeInsets.only(left: 14,right: 14,top: 3),child:TextField(
                  decoration: InputDecoration(
                      labelText: 'Louder',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down_outlined,size: 30),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectStrengthPage(),));
                        },
                      ),
                      // Set border for enabled state (default)
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.black26),
                        borderRadius: BorderRadius.circular(25),
                      ))),)
            ],
          ),
        )),
          Expanded(flex:3,child: Container(child:
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding:EdgeInsets.only(top: 8,left: 18),child: Text("Snooz",
              ),),
              Container(padding:EdgeInsets.only(left: 14,right: 14,top: 3),child:TextField(
                  decoration: InputDecoration(
                      labelText: '5mins',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down_outlined,size: 30,),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectsnoozPage()));
                        },
                      ),
                      // Set border for enabled state (default)
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.black26),
                        borderRadius: BorderRadius.circular(25),
                      ))),)
            ],
          ),
          )),
        ],
      ),
    );
  }
}
