import 'package:ui_part/animation/drawer/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(App());
 }

 class App  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
 }

