import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/7.navigation/2.%20replachment/2.body.dart';

class ReplacmentBody1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Center(
      child:ElevatedButton(onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(
            builder: (BuildContext context)=>
       ReplacmnetBody2()));

      }, child: Text('NextPage',style: TextStyle(
      color: Colors.white,
    ),),
      style: ButtonStyle(backgroundColor:WidgetStateProperty.all(Colors.green)),
    ),
  );

}