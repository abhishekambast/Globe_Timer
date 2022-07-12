


import 'package:flutter/material.dart';
import 'frontpage.dart';

class options extends StatelessWidget {

   Worldtime place1= Worldtime(url: "Asia/Kolkata",location:"Kolkata");
   Worldtime place2=Worldtime(url: "Asia/Kabul",location:"Afghanistan");
       Worldtime place3=Worldtime(url: "Asia/Baghdad",location:"Iraq");
   Worldtime place4=Worldtime(url: "Asia/Tehran",location:"Iran");
       Worldtime place5=Worldtime(url: "Asia/Bangkok",location:"Thailand");
   Worldtime place6=Worldtime(url: "Asia/Seoul",location:"South Korea");
       Worldtime place7=Worldtime(url: "Asia/Kathmandu",location:"Nepal");
   Worldtime place8=Worldtime(url: "Asia/Tashkent",location:"Uzbekistan");
       Worldtime place9=Worldtime(url: "Africa/Cairo",location:"Cairo");






  @override
  Widget build(BuildContext context) {
    void func(String? address, String? place) async{
      Worldtime instance=Worldtime(url:address,location:place);
      await instance.getime();
      Navigator.pop(context,{"time":instance.time,"location":instance.location,"turn":instance.Schedule});


    }
    return Scaffold(
     body: ListView(
     children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(child:ListTile(title:Text(place1.location.toString()),
             onTap:() {func(place1.url,place1.location);})),
       ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(child:ListTile(title:Text(place2.location.toString()),
          onTap:() {func(place2.url,place2.location);})),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(child:ListTile(title:Text(place3.location.toString()),
          onTap:() {func(place3.url,place3.location);})),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(child:ListTile(title:Text(place4.location.toString()),
          onTap:() {func(place4.url,place4.location);})),
    ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(child:ListTile(title:Text(place5.location.toString()),
             onTap:() {func(place5.url,place5.location);})),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(child:ListTile(title:Text(place6.location.toString()),
         onTap:() {func(place6.url,place6.location);}),
       )),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(child:ListTile(title:Text(place7.location.toString()),
             onTap:() {func(place7.url,place7.location);})),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(child:ListTile(title:Text(place8.location.toString()),
             onTap:() {func(place8.url,place8.location);})),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(child:ListTile(title:Text(place9.location.toString()),
             onTap:() {func(place9.url,place9.location);})),
       ),
     ],
       )

            );


     }


  }

