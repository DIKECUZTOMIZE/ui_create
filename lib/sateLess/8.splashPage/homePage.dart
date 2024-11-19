import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar:AppBar(
      centerTitle: true,
      title: Text('HomePge'),
    ),
    body: Center(
      child: Container(child: Text("rame"),),
    ),
  );

}