import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(StackApp() );
}

class StackApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: HomePage(),
   );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar:StackAppBar() ,
       body:StackBody() ,
     );

  }
}
PreferredSizeWidget StackAppBar (){
  return AppBar(
    title: Text("gradient"),
  );
}

class StackBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Stack(
        children: [
          //1
           Center(
             child: Container(
               height: 200,
               width: 200,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(100),
                   gradient: SweepGradient(
                       colors:[
                         Colors.red,
                         Colors.purple,
                       ])
               ),
             ),
           ),
          //2.
          Center(
            child:  Container(
              width: 190,
              height: 190,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
            ),
          ),
          Center(
            child:Container(
              width: 180,
              height: 180,
              decoration:BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle
              ),
            )
          ),

          Center(
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape:BoxShape.circle
              ),
            ),
          ),
          Center(
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient:LinearGradient(colors:  [
                  Colors.orange,
                  Colors.green,
                ],
                  begin:Alignment.topCenter,
                 // end:Alignment.center ,
                  stops:[0.2,5]


                )
              ),
            ),
          ),
          Center(
            child:Container(
              height: 120,
              width: 120,
              decoration:BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ) ,
            ) ,
          )
        ],
      ) ,
    );
  }
}



