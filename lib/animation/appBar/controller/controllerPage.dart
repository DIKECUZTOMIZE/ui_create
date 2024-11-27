import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TabBarControllerState();
  }
}

class TabBarControllerState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{

 TabController? mController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     mController=TabController(length: 3, vsync: this);

   ///  default tap kot kora nijor isa ba nukurio hoi jai: idexr trhough
     mController!.index =0;

  }


  @override
  Widget build(BuildContext context) {

     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text('Tab Bar'),
         bottom: TabBar(
             controller: mController!,

             tabs: [
           Tab(icon: Icon(Icons.message),
           text: 'Chats',),

           Tab(icon: Icon(Icons.baby_changing_station),
           text: 'Status',),

           Tab(icon: Icon(Icons.call),
           text: 'Call',)
         ] ),
       ),

       body: TabBarView(
           controller: mController,
           children: [
         Container(
           height: double.infinity,
           width: double.infinity,
           color: Colors.greenAccent,
           child: Center(child: Text('Chats')),
         ),
         Container(
           height: double.infinity,
           width: double.infinity,
           color: Colors.blue,
           child: Center(child: Text('Status')),
         ),
         Container(
           height: double.infinity,
           width: double.infinity,
           color: Colors.orange,
           child: Center(child: Text('Call')),
         ),
       ]),
     );
  }
}