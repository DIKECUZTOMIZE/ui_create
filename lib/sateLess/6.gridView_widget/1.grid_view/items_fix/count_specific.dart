import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Grid View Count Adopt:Fix data,
// CrossAxisCount,



void main(){
  runApp(GridApp1() );
}

class GridApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar:gridAppBar1() ,
    body: GridBody1(),
  );
}

PreferredSizeWidget gridAppBar1()=>AppBar(
  centerTitle: true,
  title: Text('Grid Viwe Count'),
);

class GridBody1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>

      GridView.count(         //1

      crossAxisCount:3,       //2   Kiata box Horizental use,

      childAspectRatio: 5/5,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11,

      children: [
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.green,
        ),



      ],);
}