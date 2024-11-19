import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NaviagationBody2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(

      leading: IconButton(onPressed: () {
        Navigator.pop( context);
      }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
      title: Text('screen2'),

    ),
  );
}