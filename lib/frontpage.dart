import 'package:http/http.dart';
import'dart:convert';
import 'package:intl/intl.dart';



class Worldtime{
  String? url;
  String? time;
  String? hoffset;
  String? location;
  bool Schedule=true;

  Worldtime({this.url,this.location});
   getime() async{

    Response response= await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data= jsonDecode(response.body);
    String datetime=data["utc_datetime"];
    String hoffset= data["utc_offset"].substring(1,3);
    String minoffset=data["utc_offset"].substring(4,6);
    DateTime now=DateTime.parse(datetime);
    now=now.add(Duration(hours: int.parse(hoffset), minutes: int.parse(minoffset)));
    Schedule=now.hour>6&&now.hour<20?true:false;

    time=DateFormat.jm().format(now);


  }

}