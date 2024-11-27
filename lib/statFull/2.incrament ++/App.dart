
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_part/statfull/2.incrament%20++/HomePage.dart';

void   main(){
  runApp(FullApp() );
}

class FullApp extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}