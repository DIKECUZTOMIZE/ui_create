//* Scaffold:Peramater:
//* AppBar,Body,FloatingBottunWidget:
//*Separet Code:
//*Text Modify:
import 'package:flutter/material.dart';

/*void main(){
  runApp( );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Home",
        style: TextStyle(
          color: Colors.lightGreen,
          fontSize: 33,
          fontWeight: FontWeight.bold
        ),
        ),
      backgroundColor: Colors.lightBlue
      ),

      body: Center(
        child: Text("Welcom",
        style: TextStyle(
          color: Colors.lightGreen,
          fontWeight: FontWeight.bold,
          fontSize: 30,
      backgroundColor: Colors.brown,  ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('sanjit');
          },
          child: Text("sanjit",
          style: TextStyle(
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          fontSize: 10,
      ),
      ),
    backgroundColor: Colors.purple
      ),
    ),
  );
  }
}*/

//* Separet code: class use:
void  main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
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
    appBar: AppBar(),
  body: BodyWidget(),
  floatingActionButton:FloatingActionButton(onPressed:(){}),

  );
  }
}
//*AppBar Build:
class MyAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text("Home",
    style: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: 34,
    ),
    ),
  backgroundColor: Colors.blue,

  );
  }
}
//*Body build:
class BodyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text("Welcom",
      style: TextStyle(
        color: Colors.lightBlue,
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}
//*Floating Bottun:
class FloatingBottunWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return FloatingActionButton(
      onPressed:(){
        print("sanjit");
      },
      child:Icon(Icons.add,color:Colors.pink,
      ),
      backgroundColor: Colors.purple,);
  }
}




//* Defferent Type of Separet:
/*
void main(){

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
 class  HomePage extends StatelessWidget {

   Function myFunc = (){};

   //void myFunction();

   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: myAppBar(),

       body: myBody(),

       floatingActionButton: FloatingActionButton(

         //onPressed:myFunction,
         onPressed: myFunc(),
         child: Text("sanjit",
           style: TextStyle(
             color: Colors.pink,
             fontSize: 12,
             fontWeight: FontWeight.bold,
           ),
         ),
       ),
     );
   }
 }

 PreferredSizeWidget myAppBar (){
  return AppBar(
    title: Text("Home",
    style: TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      fontSize: 29,
    ),
    ),
  backgroundColor: Colors.purple,);
 }

 class  myBody extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
      return Center(
      child: Text("Welcom",
      style: TextStyle(
      color: Colors.lightBlue,
      fontWeight: FontWeight.bold,
      fontSize: 15,
          ),
        ),
      );
    }
  }
*/
