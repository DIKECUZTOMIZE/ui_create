import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_part/sateLess/8.splashPage/splashPage.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home:SplashPage(),
  );
}

