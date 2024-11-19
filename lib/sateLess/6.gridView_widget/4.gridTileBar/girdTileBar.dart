import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  List<Map<String ,dynamic>>myData=[
    {
      'name'   : 'rame',
      'mass'    : 'hi',
      'time'     : '9.30 am',
      'count'    : '2',
      'pic'      : 'assets/image/Categories/bg_abstrac.jpeg'
    },
    {
      'name'   : 'rame',
      'mass'    : 'hi',
      'time'     : '9.30 am',
      'count'    : '2',
      'pic'      : 'assets/image/Categories/bg_abstrac.jpeg'
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('List view'),
        ),


        body: GridView.builder(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
          childAspectRatio: 2/2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,),
          itemCount: myData.length,
          itemBuilder:(context, index) => GridTile(
              header: GridTileBar(
                backgroundColor: Colors.green,
                leading: CircleAvatar(),
              ),

              footer: GridTileBar(
                backgroundColor: Colors.blue,
                leading: CircleAvatar(),
                title: Text('${myData[index]['name']}'),
                subtitle: Text('${myData[index]['mass']}'),
                trailing: Column(
                  children: [
                    Text('${myData[index]['time']}'),

                    CircleAvatar(
                      child: Text('${myData[index]['count']}'),
                      backgroundColor: Colors.red,
                      maxRadius: 20,

                    )
                  ],
                ),

              )
              ,

              child:  Image.asset('${myData[index]['pic']}')
          ) ,


        )
    );
  }
}