import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ButtonApp() );
}

class ButtonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       home: Homepage(),
     );
  }
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: ButtonAppBar(),
     body: ButtonBody(),
   );
  }
}

PreferredSizeWidget ButtonAppBar(){
  return AppBar();
}

class ButtonBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
       child: Column(
         children: [

          //*1.Special Constructer:
          //Void call Function :Retrun aru nijor logot o akeloge aku nane:HighOrderFunction:
         //Meaning:3d type show kuribor babe use kora hoi 3 daimondtion,(Shadow r babe use):

           ElevatedButton(onPressed: (){},
          child: Text("ElevatedButton"),),

         //*2.OutLine Button:
          OutlinedButton(onPressed: () {}, 
              child: Text("OutlineButton")) ,

           //*3.no shadaw and no Brakground , Simple Button:
          TextButton(onPressed: () {},
              child: Text("TextButton")),

         //*4.IconButton
          IconButton(onPressed: (){},
              icon: Icon(Icons.add)),


         //*Image Button:
           // *1.Feel :
          InkWell(onTap: () {},
            child: Image.asset('assets/image/bg_cake_jpeg.jpeg',width: 200,height: 200,),),

           //*2.not feel not show and zoom
           GestureDetector(onTap: () {},
           child: Image.asset('assets/image/bg_cake_jpeg.jpeg',height:200 , width: 200,),)
         ],
       ),

     );

  }
}