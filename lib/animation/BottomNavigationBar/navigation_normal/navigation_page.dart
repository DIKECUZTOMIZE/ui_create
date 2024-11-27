import 'package:ui_part/animation/BottomNavigationBar/navigation_normal//homeNav.dart';
import 'package:flutter/material.dart';
class NavigationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NavigationPageState();
  }
}
class NavigationPageState extends State<NavigationPage> {
 int  selectedIndex=0;
 
 List<Widget> navPage=[
    NavHomePage(),
   Center(child: Text('Explores',style: TextStyle(fontSize: 21),),),
   Center(child: Text('My Profile',style: TextStyle(fontSize: 21),),),
   Center(child: Text('Notification',style: TextStyle(fontSize: 21),),),
   Center(child: Text('Setting',style: TextStyle(fontSize: 21),),),
 ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Navigation '),
      ),
  
      body: navPage[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

         unselectedItemColor: Colors.grey,
       ///  default colors blue
        selectedItemColor: Colors.blue,
        currentIndex:selectedIndex,
          onTap: (value){

          selectedIndex=value;
          setState(() {});
          },
          items:[
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: 'Home'),

            BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'Explore'),

            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: 'Profile'),

            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification'),

            BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: 'Setting')
          ]



      ),
    );
  }
}