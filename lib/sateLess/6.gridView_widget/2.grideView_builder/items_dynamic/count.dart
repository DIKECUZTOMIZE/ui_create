import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Dynamic1());
}
class Dynamic1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),

  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: dynamicAppBar1(),
    body: DynamiceBody1(),
  );
}

PreferredSizeWidget dynamicAppBar1()=>AppBar();

class DynamiceBody1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>

      GridView.builder(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 3,
          childAspectRatio: 5/5,
           mainAxisSpacing: 11,
          crossAxisSpacing: 11,



      )  ,

          itemCount:10 ,
          itemBuilder: (_, index) =>
              Container(
                color: Colors.green,
              )

          );

}