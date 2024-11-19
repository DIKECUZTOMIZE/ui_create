import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body>{
  int _count=0;
  void tap(){
    _count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      children: [
        Text('$_count'),


        //*1st button use:
        //HighOredr Function use (Value Passe:)iat Pass Kpra hoi:karon Defanation tu Function bonabo Lage.
/*        ElevatedButton(onPressed: tap,
          
          //Direct cal Back Function use:(Value Call)KOra hoi Eat):iate function bonabo nalge:
      //  ElevatedButton(onPressed: (){
          // _count++;
          // setState(() {});
   // }
            child:Text('+'),
        )*/
      //*2nd Button use;
      FloatingActionButton(onPressed: tap,
      child: Text('tab'),)
      ],
    )
    );
}
}