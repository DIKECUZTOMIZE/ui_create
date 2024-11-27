
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_part/sateLess/1.%20stateLessWidget/6.sizeBox_pading_textAdjustment/AppBar.dart';
import 'package:ui_part/sateLess/1.%20stateLessWidget/6.sizeBox_pading_textAdjustment/Body.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:   MyBody(),
        appBar:MyAppBar(),
    );
  }
}