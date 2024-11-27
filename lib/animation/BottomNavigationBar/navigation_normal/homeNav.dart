import 'package:flutter/material.dart';

class NavHomePage extends StatefulWidget{
  @override
  State<NavHomePage> createState() => _NavHomePageState();
}

class _NavHomePageState extends State<NavHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.green,
        child: Center(child: Text('Home',style: TextStyle(fontSize: 21),),));
  }
}