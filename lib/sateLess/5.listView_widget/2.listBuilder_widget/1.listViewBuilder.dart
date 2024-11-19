import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//List Builder: context and Index compelesry use:
//not needed Map function and children aru element
//iat dynamic data show krabor babe  use kora hoi.
//items count aru context and index throgh dhara data transfer kora hoi



void main (){
  runApp(ListViewBuilderApp());
}

class ListViewBuilderApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar:listViewBuilderAppBar() ,
    body: ListViewBuilderBody(),
  );
}

PreferredSizeWidget listViewBuilderAppBar ()=>AppBar(
  centerTitle: true,
  title: Text("List View Builder (Widget)"),

);

class ListViewBuilderBody extends StatelessWidget{

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
  Widget build(BuildContext context) =>ListView.builder(

     // itemCount: 18,
      itemCount: myData.length,

      itemBuilder: (_,index){
        return Container(
          
          width: double.infinity,
          
          child: Column(
            children: [

              Row(

                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(myData[index]['img']),
                          fit: BoxFit.cover)
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                        Text(myData[index]['name']),

                        SizedBox(
                          height: 11,
                        ),

                        Text(myData[index]['message']),


                      ],)),

                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                        Text(myData[index]['time']),

                        SizedBox(
                          height: 11,
                        ),

                        Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(

                                shape: BoxShape.circle,
                                color: Colors.green
                            ),

                            child: Center(
                              child: Text(myData[index]['message'],
                                  style: TextStyle(
                                      color: Colors.white
                                  )),
                            )),


                      ],)),

                ],
              ),

              Container(
                margin: EdgeInsets.only(left: 70),
                height: 1,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),
          
        );
  }
 );
}