import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp() );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar:appBar(),
        body:MyBody(),
      );
}

PreferredSizeWidget appBar()=>AppBar(
  title: Text('StateFull'),
  centerTitle: true,
);

class MyBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _MyBody();

}

class _MyBody extends State<MyBody>{
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      children:[
      Container(
        height:200,
        width: 200,
        color: Colors.green,
      )
      ],
    ),
  );

}