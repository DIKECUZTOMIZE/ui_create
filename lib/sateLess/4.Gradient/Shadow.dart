import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ShadowApp());
}

class ShadowApp extends StatelessWidget{
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
      appBar:shadowAppBar() ,
      body:ShadowBody() ,
    );
  }
}

PreferredSizeWidget shadowAppBar (){
  return AppBar(
    title: Text("Shadow"),
  );
}


class ShadowBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Center(child:
   Container(
     width: 200,
     height: 100,
     decoration:  BoxDecoration(
       color: Colors.white,
       boxShadow: [
         //Eta Shadow Dibor Babe use kora hoi Single use kyuribo Lage:
         BoxShadow(
             color:Colors.grey,
           blurRadius: 10,
           spreadRadius: 2,
           offset: Offset(-12,-12),
         ),

         //Shadow aru Color dibor Babe use kora duta Shadow:(multiple Shadow r Babe use)
         BoxShadow(
           color: Colors.red,
          blurRadius: 30,
           spreadRadius: 1,
           offset: Offset(10, 10)
         )
       ]
     ),

   ),
 );

  }
}