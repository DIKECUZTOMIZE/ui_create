 import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
 runApp(App() );
 }

 class App extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return MaterialApp(
      home: HomePage(),
     );
  }
 }

 class HomePage extends StatefulWidget {
   @override
   State<HomePage> createState() => _HomePageState();
 }

   class _HomePageState extends State<HomePage> {

   double mheight=200;
   double mwidth=200;


   ///  Colors:

   ///Manual Creat colors List:
   List<Color>myColors=[
   Colors.grey,
   Colors.black,
   Colors.amberAccent,
   Colors.red,
   ];

   /// Single Colors Variable
   Color mColors=Colors.blue;

   ///  BroderRadiush:
  double  borderRadish=0;

   @override
   Widget build(BuildContext context) {
   // TODO: implement build
   return Scaffold(

   body: Center(
   child: InkWell(
   onTap: () {


       /// Height and  Tangle Operation: (?)
       // mwidth=200==100 ? 200:100;
       // mheight=200==100 ?200:100;


       ///  Random Operation: with double use poiny value
       mwidth = Random().nextInt((100)+200).toDouble();
       mheight = Random().nextInt((100)+200).toDouble();


       
   ///  Colors:
   /// Colors Tangle Operation (?)
 //  mColors = mColors == Colors.orange? Colors.blue : Colors.orange;
   
  /// PrimaryColors:
    //   mColors= mColors==Colors.primaries ? Colors.blue : Colors.primaries; 
   
   ///  Random Colors:
       mColors= Colors.primaries[ Random().nextInt(Colors.primaries.length-1)];

  /// BorderRadish:
       borderRadish=Random().nextInt(100).toDouble();


   setState(() {});
   },
   ///  Animation not use:
   // child: Container(
   //  height: mheight,
   //  width: mwidth,
   //  color: Colors.blue,
   //
   // ),


   /// Animation use with Time Durition:
        child:    AnimatedContainer(
                duration: Duration(microseconds: 100),

     /// milisecond use low time
     height: mheight,
     width: mwidth,

          decoration: BoxDecoration(
            color: mColors,
            borderRadius: BorderRadius.circular(borderRadish)
          ),

   )
   )
   )
   );
   }
   }
