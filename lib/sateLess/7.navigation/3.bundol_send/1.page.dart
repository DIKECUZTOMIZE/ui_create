import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_part/sateLess/7.navigation/3.bundol_send/2.page.dart';


 class Page1 extends StatelessWidget{
   @override
   Widget build(BuildContext context)=>Scaffold(
     appBar:page1AppBar() ,
     body:Page1Body(),
   );
  }


 PreferredSizeWidget page1AppBar()=>AppBar(
   centerTitle: true,
   title: Text('Screen1'),
 );

 class Page1Body extends StatefulWidget{
   @override
  State<StatefulWidget> createState() =>_Page1BodyState();
 }

 class _Page1BodyState extends State<Page1Body>{

   int count=0;
   @override
  Widget build(BuildContext context) => Column(
     children: [

       Center(child:Text(count.toString(),
        style: TextStyle(fontSize: 100),) ),



       FloatingActionButton(onPressed: (){
         setState(() {
           count++;
         });
         Navigator.push(context, MaterialPageRoute(
             builder:(context) => Page2(value: count,),));

       },

         child: Text('Next Page',textAlign: TextAlign.center,),
       )




     ],

   );

 }