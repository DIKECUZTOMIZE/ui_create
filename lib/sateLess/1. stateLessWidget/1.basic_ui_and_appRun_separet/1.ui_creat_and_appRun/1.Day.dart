

//* App t kenekoi UI bonai?
//* Run kenkoi kore?
//* Separet kenkoi kore?
//* Home Page kenkoi creat kore?
//*Scaffold : peramater use:AppBar,
//*AppBar:Text(Style kora),Backgound color.

import 'package:flutter/material.dart';

//* Not Separet:

/*void main(){

  runApp(MaterialApp(
      title: "MY APP",
      home: Scaffold(
      appBar: AppBar(
       centerTitle: true,
       title: Text("Home",
       style:TextStyle(
         color: Colors.green,
         fontSize: 30,
         fontWeight: FontWeight.bold,)),
         backgroundColor: Colors.green
     ),
    ),
  ));
}*/

//* Separet code: clean code and reusibilty less:

void  main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:HomePage(),
  );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Home",
      style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 30
      ),
      ),
      backgroundColor: Colors.blue
    ),
  );
  }
}






