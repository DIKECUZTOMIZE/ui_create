
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_part/sateLess/6.gridView_widget/2.grideView_builder/items_dynamic/count.dart';

void main(){
  runApp(Dynamic2());
}
class Dynamic2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: dynamicAppBar1(),
      body: DynamicBody2(),
  );
}

PreferredSizeWidget DynamicAppBar2()=>AppBar(
  centerTitle: true,
  title: Text("dynamic extends"),
);

class DynamicBody2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
      GridView.builder(
          gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(
            
              maxCrossAxisExtent:100,
              childAspectRatio: 5/5,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
          ),
              itemCount: 10,
             itemBuilder: (context,index)=>
                 Container(
                   color: Colors.red,
                 ));

}