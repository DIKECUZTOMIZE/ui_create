import 'package:ui_part/animation/tabBar/tabBarPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:TabBarPage() ,
    );
  }
}