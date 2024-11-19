import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(){
  runApp(DecreamentApp());
}

class DecreamentApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    backgroundColor: Colors.white,
    appBar: decreamentAppBar(),
    body: DecreamentBody(),

  );
}

PreferredSizeWidget decreamentAppBar()=>AppBar(
  centerTitle: true,
  backgroundColor: Colors.orangeAccent,
  title: Text('Dcreament'),
);

class DecreamentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_DecreamentBody();
  }

class _DecreamentBody extends State<DecreamentBody>{

  int  _result=0;

  void decreamnet(){
    _result--;
    setState(() {});

  }
  @override
  Widget build(BuildContext context) =>SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          Text('$_result',style: TextStyle(color: Colors.black,fontSize: 30),),

          FloatingActionButton(
            onPressed:decreamnet,
             child: Text('Tab'),)
        ],
      ),
    ),
  );
  }


//AppBar decoration,
//Column under Text and
// Button:anoninuse fucntin pass kuribo lage,call kurobo nlage
//Variable creat result :Function bahirot bonabo lage.
//Anoninus Fucntion :defination dia logic use ,
//setState use .

















