import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(){
  runApp(CardApp() );
}

class CardApp extends StatelessWidget{
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
       appBar:cardAppBar() ,
       body:CardBody() ,
     );
  }
}

PreferredSizeWidget cardAppBar(){
  return AppBar(
    title: Text('Card'),
  );
}

class CardBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Center(
       child: Card(
         elevation: 14,
         color: Colors.blue,
         shadowColor: Colors.blueAccent,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right:Radius.circular(30)  )),

         child: Container(
           width: 300,
           height: 100,
           alignment: Alignment.bottomRight,         ),

       ),
     );
  }
}
