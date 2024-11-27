import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_part/statfull/2.incrament%20++/AppBar.dart';
import 'package:ui_part/statfull/2.incrament%20++/Body.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_HomPageState();
}

class _HomPageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar:stateAppBar(),
        body:Body() ,
      );

  }
}