import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Grid View Extends responds:Fix data,
// MainAxisCount,




void main (){
  runApp(GridView2());
}
class GridView2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar:gridAppBar2() ,
    body:GridBody2() ,
  );
}

PreferredSizeWidget gridAppBar2()=>AppBar(
  centerTitle: true,
  title: Text('Grid View extend'),
);

class GridBody2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>

      GridView.extent(
      maxCrossAxisExtent:200,
      childAspectRatio:1/5,
      mainAxisSpacing: 11,
      crossAxisSpacing: 11,

      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.red,
        ),

      ],);

}