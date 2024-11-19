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
      'name'   : 'bal',
      'age'    : '45'
    },
    {
      'name'   : 'noyan',
      'age'    : '39'
    },
    {
      'name'   : 'pam',
      'age'    : '34'
    },
    {
      'name'   : 'rhul',
      'age'    : '29'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('List view'),
        ),


        body: ListView.builder(
            itemCount: myData.length,
            itemBuilder: (context, index) =>
                ListTile(

                  leading:
                  //Text('${index +1}.'),
                  CircleAvatar(
                    backgroundImage: AssetImage('${myData[index]['pic']}'),

                  ),

                  title: Text('${myData[index]['name']}'),
                  subtitle:Text('${myData[index]['mass']}') ,
                  trailing:Column(
                    children: [
                      Text('${myData[index]['time'] }'),

                      //space:
                      SizedBox(
                        height: 10,
                      ),

                      CircleAvatar(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        maxRadius: 10,
                        child:Text('${myData[index]['count'] }') ,
                      )
                      // ClipOval(child: Text(myData[index]['']))
                    ],
                  ) ,
                )

        )
    );
  }
}