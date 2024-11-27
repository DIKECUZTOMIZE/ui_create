import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_part/sateLess/7.navigation/2.%20replachment/1.body.dart';
import 'package:ui_part/sateLess/7.navigation/2. replachment/1.appBar.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: replachmentAppBar(),
    body: ReplacmentBody1 () ,
  );
}