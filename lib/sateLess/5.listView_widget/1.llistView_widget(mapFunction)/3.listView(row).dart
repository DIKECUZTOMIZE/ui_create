import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//instagram top side Row scroll  picture kuribor babe use kora hoi ,
//ane dhoronor  arthicure bur use kora hoi,
//List view fixer babe use kora hoi,
//List view dynamic r babe kora hoi,




void   main(){
  runApp(ListViewAppRow());
}

class ListViewAppRow  extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: ListViewRowAppBar(),
    body: ListViewRowBody(),
  );
}

PreferredSizeWidget ListViewRowAppBar()=>AppBar(
  centerTitle:true,
  title: Text('Lits View(Row)'),
);

class ListViewRowBody extends StatelessWidget{

  List<Map<String, dynamic>> myData = [
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 3,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 3,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 3,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 2,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 1,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 4,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 6,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 9,
    },
    {
      //asset img:
      'img': 'assets/image/bg_cake_jpeg.jpeg',

      //network img:

      'name': 'sanjit',
      'message': 'Hi',
      'time': '09.12am',
      'countno': 2,
    },
  ];

  @override
  Widget build(BuildContext context) =>ListView(
    scrollDirection:Axis. horizontal,
    children: myData.map((elemnet){
      return Container(

        //FIx kuribo lage:
        width: 300,

        child: Column(
          children: [
            Row(
              children: [
                
                //Image:
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(elemnet['img']),
                        fit: BoxFit.cover)
                  ),

                ),
                
                //name and message
                Expanded(
                 // flex: 5,
                    child:Column(
                      children: [
                        Text(elemnet['name'],style: TextStyle(
                          fontSize: 25,
                        ),),

                        SizedBox(
                          height: 10,
                        ),

                        Text(elemnet['message'],style: TextStyle(
                          fontSize: 25,
                        ),),
                      ],
                    )),
                //Time and count:
                Expanded(
              //    flex: 1,
                    child:Column(
                      children: [
                        Text(elemnet['time'],style: TextStyle(
                          fontSize: 25,
                        ),),

                        SizedBox(
                          height: 10,
                        ),

                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          ),

                          child: Center(
                            child: Text(elemnet['message'],style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Divider()
             
          ],
        ),
      );
    }).toList(),
  );
 
}