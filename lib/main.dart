import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getover/options.dart';
import 'frontpage.dart';

import 'dart:convert';
import 'options.dart';
import 'dart:async';
import 'startinfo.dart';

void main(){runApp(MaterialApp(
initialRoute: "/home",
routes: {
  "/home":(context)=>Home(),
  "/":(context)=>loading(),

  "/locations":(context)=>options()
},))

;}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}



class _HomeState extends State<Home> {

  Map fetch={};
  bool isdaytime=false;
  String? Bg;

 attempt() async{

    Worldtime data=Worldtime(url:"Asia/Kolkata",location: "India");
    await data.getime();
    print(data.time);
    setState(() {fetch={"time":data.time};
    isdaytime=data.Schedule;


    });








  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Hey there");
     attempt();






  }

  @override
  Widget build(BuildContext context) {
   Bg=isdaytime?"https://www.mordeo.org/files/uploads/2020/04/Sunset-Palm-Tree-Cloud-Sky-Reflection-4K-Ultra-HD-Mobile-Wallpaper.jpg":"https://sguru.org/wp-content/uploads/2017/09/Night-Wallpaper-Full-Moon-Night-HD-Mobile-Wallpaper.jpg";




    return Scaffold(
        appBar: AppBar(title: Icon(Icons.access_alarms_outlined, color: Colors.deepOrange,size: 30.0),
        centerTitle: true,),
      body: Container(child: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ElevatedButton.icon(onPressed:() async{
        dynamic result=await Navigator.pushNamed(context, '/locations');
        setState(() {
             fetch={"time":result["time"]};
             isdaytime=result["turn"];
        });
    }, icon: Icon(Icons.location_on), label:Text("Edit Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
       Text(fetch["time"],
       style:TextStyle(fontSize: 100.0,fontWeight: FontWeight.bold,color: Colors.pink
       ),)],


    )),
      decoration:BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(Bg.toString()),
          fit: BoxFit.cover,
        )
      )));
  }
}



