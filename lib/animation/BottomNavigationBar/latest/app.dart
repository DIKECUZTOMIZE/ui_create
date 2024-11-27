import 'package:ui_part/animation/BottomNavigationBar/latest/navigation.dart';
import 'package:flutter/material.dart';

import 'navigationHomePage.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:NavigationPage(),
    );
  }
}