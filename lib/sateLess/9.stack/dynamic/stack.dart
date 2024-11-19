
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(StackDynamicApp2());
}
class StackDynamicApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: stackDynamicAppBar2(),
    body: StackDynamicBody2(),
  );
}

PreferredSizeWidget stackDynamicAppBar2()=>AppBar(
  centerTitle: true,
  title: Text("dynamic extends"),
);

class StackDynamicBody2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
      Stack(        //Center and right and left loijabor babe use case
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
                gridDelegate:
                SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:250,
                  childAspectRatio: 10/20,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 11,
                ),
                itemCount: 4,
                itemBuilder: (context,index)=>
                    Container(
                      color: Colors.red,
                    )),
          ),

          Align(
            alignment:Alignment.centerRight,

            child:
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),),

          Positioned(
              left: 100,
              top: 100,
 
                child: 
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Center(child: Text('2',style: TextStyle(color: Colors.white),)),
                        Icon(Icons.add)
                     
                      ],
                    ),
                  
                  ),
             
           
           
          )
        ],
      );

}