import 'package:ui_part/animation/appBar/controller/controllerPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App() );
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:TabBarControllerPage() ,
    );
  }
}
