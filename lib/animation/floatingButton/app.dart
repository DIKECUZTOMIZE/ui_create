import 'package:ui_part/animation/floatingButton/homePage.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage1(),
    );
  }
}