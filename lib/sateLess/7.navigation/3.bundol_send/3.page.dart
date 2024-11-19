import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {

  int result;

  Page3({required this.result});

  @override
  State<StatefulWidget> createState() =>_Page3();
}


class _Page3 extends State<Page3>{
  @override
  Widget build(BuildContext context) => Scaffold(

   appBar: AppBar(
     centerTitle: true,
     title: Text('Screen3'),),
    body: Center(
  child: Text(widget.result.toString(),style: TextStyle(

    fontSize: 60
  ),))
  );


}