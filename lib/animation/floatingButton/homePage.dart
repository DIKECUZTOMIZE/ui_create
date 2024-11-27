import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Floating Button'),
      ),
      body: Container(),

      /// location cahange:
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,

      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
      /// extendet : to button
    FloatingActionButton.extended(
      icon: Icon(Icons.add),
      label: Text('add'),
      /// anekoi modify kuribo pari
      // label: Row(
      //   children: [
      //     Icon(Icons.add),
      //     Text('Add'),
      //   ],
      // ),
    foregroundColor: Colors.blueAccent,
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 11,

    ///   long preass:
    tooltip: 'compose',

    onPressed: (){
    print('Tab');
    },
      /// Not imporatant extentdot
        // Icon(Icons.add)

    ),
    
    SizedBox(
      height: 11,
    ),

    /// large
    FloatingActionButton.large(
    foregroundColor: Colors.blueAccent,
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 11,

    ///   long preass:
    tooltip: 'compose',

    onPressed: (){
    print('Tab');
    },child: Icon(Icons.add)),

      SizedBox(
        height: 11,
      ),

    /// Small:
    FloatingActionButton.small(
    foregroundColor: Colors.blueAccent,
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 11,

    ///   long preass:
    tooltip: 'compose',

    onPressed: (){
    print('Tab');
    },child: Icon(Icons.add)),

      SizedBox(
        height: 11,
      ),

      /// normal:
      FloatingActionButton(
          foregroundColor: Colors.blueAccent,
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 11,

          ///   long preass:
          tooltip: 'compose',

          onPressed: (){
            print('Tab');
          },child: Icon(Icons.add)),

    ],
    ));
  }
}