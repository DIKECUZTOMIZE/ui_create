import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/7.navigation/1.navigation.push/appBar.dart';
import 'package:flutter_basic/7.navigation/1.navigation.push/1.body.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar:navigationPushAppBar() ,
    body:NavigationPushBody() ,
  );
}