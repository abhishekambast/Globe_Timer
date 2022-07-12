import 'package:flutter/material.dart';
import 'frontpage.dart';
class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}



class _loadingState extends State<loading> {
  Local() async{
    Worldtime collect=Worldtime(url: "Asia/Baghdad",location: "Iraq");
    await collect.getime();
    Navigator.pushNamed(context, "");}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
