
import 'package:flutter/material.dart';


//ListView widget use direct ,
//Expand and flex(Colunm )
//imgae(Network and assets)
//  similer data jene massege r dre  kuribor babe use kora hoi ,
//ane dhoronor  arthicure bur use kora hoi,
//List view fixer babe use kora hoi,  (Map Function use kora hoi iat (element),)
//List view dynamic r babe kora hoi,(buid context)


void main (){
  runApp(ListViewApp2() );
 }

 class ListViewApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
 }

 class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar:ListViewAppBar2() ,
    body:ListViewBody2(),
  );
 }

 PreferredSizeWidget ListViewAppBar2()=>AppBar(

   centerTitle: true,
   title: Text('ListView (column)'),

 );

class ListViewBody2 extends StatelessWidget{

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
    children: myData.map((elemet){
      return Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [

            Row(
              children: [

                //Image:asset Image lua hoise:
                Container(
                  height: 60,
                  width: 60,

                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:  AssetImage(elemet['img']),fit: BoxFit.cover),
                   shape: BoxShape.circle
                )
                ),

                //Space:
                SizedBox(
                  width: 10,
                ),


                //Expanded : name ,massege:
                Expanded(

                  //adjust r babe Rotet
                  //judi time and count no tu ui valdre tolot oprt hole
                  //tatia ratio r jagat mutiply kuribo lage.
                  flex: 5,
                  child: Row(
                    children: [
                      //Name and message:
                  
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(elemet['name'],style: TextStyle(fontSize: 20),),

                          SizedBox(
                            height: 10,
                          ),

                          Text(elemet['message'],style: TextStyle(fontSize: 16),)
                        ],
                      ),

                      
                    ],
                  ),
                ),

                //Time and Count no
                Expanded(
                  flex:2,
                    child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(elemet['time']),

                    //space:
                    SizedBox(
                      height: 10,
                    ),


                    //*Counnt number lobar babe judi boxer bhitorot
                    //dekhabo khujile use kora Container,judi use nokora
                    //tatia null type show kuribo
                    //aru spaling mistake hobo nalghe aru eta important kam hl
                    //ToSring logabo lage karon :int value dia ase listot
                    //listot thoka int value convert kuribo lage String t
                    //ToString buli
                    //Multiple user babe use kora hoi Expand:
                    Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green
                        ),
                        child: Center(child: Text(elemet['countno'].toString(),style: TextStyle(
                          color: Colors.white,

                        ),)))
                  ],
                ))

              ],
            ),

                //Rowe r bahirot line lua hoise khokulure
                Container(
             margin: EdgeInsets.only(left: 90),
             height: 1,
             color: Colors.black.withOpacity(.2),
           )
          ],
        ),
      );
    }).toList(),



    //Breaket
  );
}