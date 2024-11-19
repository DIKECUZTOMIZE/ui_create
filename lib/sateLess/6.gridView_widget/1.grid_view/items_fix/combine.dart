import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CombineApp());
}
class CombineApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar:combineAppBar() ,
    body: CombineBody(),
  );

}

PreferredSizeWidget combineAppBar()=>AppBar(
  centerTitle: true,
  title: Text('combine'),
);

class CombineBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Column(
    children: [

      //Response:
      Expanded(
        flex: 4,
        child: GridView.extent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 2/1,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
        
         children: [
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
         ],),
      ),

    //Adopt:
      Expanded(
        flex: 2,
        child: GridView.count(
         crossAxisCount: 3,
          childAspectRatio: 2/1,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,

         children: [
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
           Container(
             color: Colors.green,
           ),
         ],),
      ),





    ],
  );

}