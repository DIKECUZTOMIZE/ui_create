import 'package:flutter/material.dart';
class NavigatorHomePage extends StatefulWidget{
  @override
  State<NavigatorHomePage> createState() => _NavigatorHomePageState();
}

class _NavigatorHomePageState extends State<NavigatorHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child:Center(
          child: Text('Home Page',style: TextStyle(fontSize: 30),),)

    );
  }
}