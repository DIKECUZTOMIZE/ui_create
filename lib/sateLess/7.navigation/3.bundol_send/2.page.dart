import 'package:flutter/material.dart';
import 'package:ui_part/sateLess/7.navigation/3.bundol_send/3.page.dart';



 class Page2 extends StatefulWidget{

   int  value;
   Page2({required this.value});

   @override
  State<StatefulWidget> createState() =>_PageState();
 }

 class _PageState extends State<Page2>{
   @override
  Widget build(BuildContext context) =>Scaffold(
     appBar: AppBar(
       centerTitle:true,
       title: Text('Screen2'),
     ),

     body: Column(
       children: [
         Center(
           child: Text(widget.value.toString()),
         ),

         FloatingActionButton(onPressed: () {
           Navigator.push(context, MaterialPageRoute(
               builder:(context) => Page3(result:widget.value),));
         },
           child: Text('Tab'),
         
         )

       ],
     ),


   );

 }

