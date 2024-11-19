import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/7.navigation/1.navigation.push/homePage.dart';

void   main(){
  runApp(NavigationPushApp() );
}

class NavigationPushApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

