import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(GradientApp() );
}
class GradientApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       home: HomePage(),
     );
  }
}
class HomePage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: gradientAppBar(),
      body: GradientBody(),
    );
  }
}
PreferredSizeWidget gradientAppBar(){
  return AppBar(
    title: Text("TextField"),
  );
}

class GradientBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return
       // Align(alignment: Alignment.bottomCenter, (Kot use kora hoi check kora hoise)
       //child:
         Center(child: Container(
           width: 200,
            height: 200,
             decoration: BoxDecoration(
                 color: Colors.cyan,
                 shape: BoxShape.circle,

                 //*Gardient:Defreent Colors Use One place:
                 //*Type:  3type:

                 gradient:
                 //*1.LinearGradient:Line By Line By use Colors:List<> Requierd
                 // LinearGradient(
                 //     begin: Alignment.topCenter,
                 //     end: Alignment. bottomCenter,
                 //     stops:[0.1,1,] ,
                 //     colors: [
                 //     Colors. red,
                 //     Colors.purple,
                 //     ]
                   //*2.RadialGradient:Round Sub Type:(Circular):
                   RadialGradient(
                     center: Alignment.center,
                     stops:[0.2,0.6,.9,],
                       colors: [
                         Colors.yellow,
                         Colors.orange,
                         Colors.blue,
                       ]),

                   //*3.SweepGradient:  
                   /* SweepGradient(
                        colors: [
                          Colors.red,
                          Colors.purple.withOpacity(.3),



                        ]


                    ),*/
                 )
             )
         );
  }
}
