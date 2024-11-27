/// app bar : application bar ,tool bar ,action bar,
/// Automaticly back button thake app barrt,
/// andriod left and ios center ahe title ,
/// right andriod action aru pop manue,
/// flexible space 
/// leading top side t thake()

import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('HOME'),
        leading: Icon(Icons.account_circle_rounded),
        leadingWidth: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        side: BorderSide(color: Colors.orange,width: 2)),
        elevation: 11,
        shadowColor: Colors.orange,
        actions: [
        
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_rounded)),
          


          /// popa manueButton:
          PopupMenuButton(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 11,
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(21)),

              /// on Canecl :bahirot tap hoi jua
              /// on open :open kora,
              /// on selsected  :jukun ietems select hua,
              itemBuilder:(_){
            return[
              PopupMenuItem(
                onTap: (){},
                child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.purple,)),
                  SizedBox(width: 11,),
                  Text('Setting',style: TextStyle(color: Colors.purple),)
                ],
              ),),
              PopupMenuItem(

                onTap:(){} ,

                child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Colors.purple,)),
                  Text('Logout',style: TextStyle(color: Colors.purple),)
                ],
              ),)
            ];
          })
        ],
      ) ,
    );
  }
}


