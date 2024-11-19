//splashPage :mane first tote 1,2,3 seconcd show kore mane app lunch hoisi buli
//Show kore
//Initial step use : Logo ba ,loading,brand name ibur dekhabor babe .
//first screen :Intro screen mane : Imformation show kore jene Skip and next ,
//splashPage t time aru   navigator .push replacement use kora jai

import 'package:flutter_basic/8.splashPage/homePage.dart';
import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Main threat:timer class:
//duta positional argument:Duration and call back:
//Duration object class:
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child:  FlutterLogo(size:100,)
      ),
    );
  }
}
