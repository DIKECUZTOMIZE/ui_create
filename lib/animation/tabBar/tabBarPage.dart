import 'package:flutter/material.dart';


/// one Page eta clickot under t multiple layout introduse kora hoi beleg beleg Navication oprt,
/// tap navigation buli kuahoi tab bar k
/// andriod t frankment buli kua hoi aitu conceptuk: tukra kora fankement mane

class TabBarPage extends StatefulWidget {

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin {
  /// tabController
//var mController=TabController(length:3 , vsync: this) ;

  @override
  Widget build(BuildContext context) {

           ///   Widget for tab bar:
    return DefaultTabController(

      /// items:
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tab Bar'),


          bottom: TabBar(
            //onTap: (){},
            indicatorColor: Colors.blueAccent,
          // isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
           tabs: [

             Tab(

               ///  judi chils use kora tatia eta loba ligibo text ,nhuli child,
               ///  judi normal text, judi cuztomize kuibor babe child
              // text: 'Chats',

               ///  cuztomise:
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Icon(Icons.message),
                   Text('Chats')

                 ],
               ),
             ) ,

             /// direct defind: text and icons not row use:
             Tab(
               ///  icons text anekoi lobo pare but text tu tlt lobo nuare:
               icon: Icon(Icons.baby_changing_station),
               child:Text( 'Status')  ,
             ),


             Tab(
               icon: Icon(Icons.call),
               text: 'Calls',)
           ]),
        ),
        body:

        ///  ui t dekhabor babe use kora hoi tab bar
        ///  o index mane first page, 1 index mane 2nd page
        TabBarView(children: [

           Container(
             height: double.infinity,
             width: double.infinity,
             color: Colors.green,
             child: Center(child: Text('Chats')),
           ) ,
           Container(
             height: double.infinity,
             width: double.infinity,
             color: Colors.orange,
             child: Center(child: Text('Status')),
           ) ,
           Container(
             height: double.infinity,
             width: double.infinity,
             color: Colors.blueAccent,
             child: Center(child: Text('Calls')),
           ) ,

        ]),
      ),
    );
  }
}


/// Folow:
/// 1. defaultTabController
/// 2.Tab bar,
/// 3.Tab bar views
/// 4.Tab Controller