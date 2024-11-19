import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ListViewApp());
}

class ListViewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home:  HomePage(),
   );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar:listViewAppBar() ,
       body: ListBody(),
     );
  }
}

PreferredSizeWidget listViewAppBar()=>AppBar(
    centerTitle: true,
    backgroundColor:Colors.green,
    title: Text('ListView',style: TextStyle(color: Colors.white),),
  );


class ListBody extends StatelessWidget{

  List<Map<String,dynamic>> mData=[
    {
      'name'    : 'Ram',
      'age'     : 'age:16',
      'class'   : 'class:10',
    },
    {
      'name'    : 'Sanjit',
      'age'     : 'age:19',
      'class'   : 'class:11',
    },
    {
      'name'    : 'puti',
      'age'     : 'age:25',
      'class'   : 'class:12'
    },
    {
      'name'  : 'Sumi',
      'age'   : 'age:26',
        'class': 'class:13'
    },
    {
      'name'  : "Ball",
      'age'   : 'age:25',
      'class' : 'class:12'

    },
    {
      'name'    : 'Ram',
      'age'     : 'age:16',
      'class'   : 'class:10',
    },
    {
      'name'    : 'Sanjit',
      'age'     : 'age:19',
      'class'   : 'class:11',
    },
    {
      'name'    : 'puti',
      'age'     : 'age:25',
      'class'   : 'class:12'
    },
    {
      'name': 'Sumi',
      'age':  'age:26',
      'class': 'class:13'
    },
    {
      'name'  : "Ball",
      'age'   : 'age:25',
      'class' : 'class:12'

    },
    {
      'name'    : 'Ram',
      'age'     : 'age:16',
      'class'   : 'class:10',
    },
    {
      'name'    : 'Sanjit',
      'age'     : 'age:19',
      'class'   : 'class:11',
    },
    {
      'name'    : 'puti',
      'age'     : 'age:25',
      'class'   : 'class:12'
    },
    {
      'name': 'Sumi',
      'age': 'age:26',
      'class': 'class:13'
    },
    {
      'name'  : "Ball",
      'age'   : 'age:25',
      'class' : 'class:12'

    }


  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            
            children: mData.map((elemet){
              return Column(
                children: [
                  Container(
                    height:80,
                    width: double.infinity,

                    decoration: mydecoration(),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(elemet['name'],style: TextStyle(
                          color: Colors.green,fontSize: 30
                        ),),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(elemet['age']),
                            Text(elemet['class']),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider()
                ],
              );
            }
            ).toList(),

          ),
        ),
    );
  }
  
  
  BoxDecoration mydecoration()=>BoxDecoration(
   // borderRadius: BorderRadius.circular(10),
//border: Border.all(color: Colors.black.withOpacity(.2))

  );
}
