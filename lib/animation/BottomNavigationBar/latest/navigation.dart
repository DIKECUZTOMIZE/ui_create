import 'package:ui_part/animation/BottomNavigationBar/latest/navigationHomePage.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return _NavigationPageState();
  }
}

class _NavigationPageState extends State<NavigationPage>{

 int selectedIndex=0;

  List<Widget> naviPages=[
    NavigatorHomePage(),

    Center(child: Text('Explors',style: TextStyle(fontSize: 30),),),
    Center(child: Text('Profiles',style: TextStyle(fontSize: 30),),),
    Center(child: Text('Notification',style: TextStyle(fontSize: 30),),),
    Center(child: Text('Setting',style: TextStyle(fontSize: 30),),),
];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Latest Navigator '),
      ),

     /// Show:
     body: naviPages[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
      indicatorColor: Colors.orange,
        // ontap:
        onDestinationSelected: (value) {
          selectedIndex=value;
          setState(() {});
        },

        destinations: [
        NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined,color: Colors.blue,),
            icon: Icon(Icons.home), label: 'Home'),
          
        NavigationDestination(
            selectedIcon: Icon(Icons.explore_outlined,color: Colors.blue,),
            icon: Icon(Icons.explore), label: 'Explore'),
        NavigationDestination(icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
        NavigationDestination(icon: Icon(Icons.notifications), label: 'Notification'),
        NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
      ],),
    );

  }
}

// BottomNavigationBar(
//
// currentIndex: selectedIndex,
// unselectedItemColor: Colors.grey,
// selectedItemColor: Colors.blue,
// onTap: (value){
//
// selectedIndex=value;
// setState(() {});
// },
// items: [
//
// BottomNavigationBarItem(icon: Icon(Icons.home),
// label: 'Home'),
//
// BottomNavigationBarItem(icon: Icon(Icons.explore),
// label: 'Explores'),
//
// BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),
// label: 'Profile'),
//
// BottomNavigationBarItem(icon: Icon(Icons.notifications),
// label: 'Notification'),
//
// BottomNavigationBarItem(icon: Icon(Icons.settings),
// label: 'Setting')
// ],
// ),