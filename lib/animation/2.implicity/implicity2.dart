import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double mheight = 100;
  double mwidth = 200;

  /// Pading:
  double mPading = 0;


  /// Initial Value:0;
  double mOpecity = 1;


  /// Cross Fade Variable:
  bool showFirstChild = true;


  /// Alignment:
  //  intial variable:Topn left r pora center loi jua hoise:
  Alignment  mAlignemet=Alignment.topLeft;

// LisT Alignment: Random use:
  List<Alignment>listAlingment=[

    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.topCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.bottomCenter,

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:

          ///  Opacity:(Transparent) Hide,Revile,Visible and Invisible, Screen Space place,
          ///  RunTime Introduce: Under Show ,Animation ke sath sath Visible Hua:

          InkWell(
        onTap: () {

          ///  Animation Opecity: Tanlge
          //    mOpecity=mOpecity == 0 ? 1 :0 ;


          ///  Animation Pading:Operation
          // mPading= mPading+5;


          ///  Animation crossState:Operation
           // showFirstChild = !showFirstChild;


        /// Animation Align:Operation
          //Normal:
         //  mAlignemet=Alignment.center;

         //Random:
            mAlignemet=listAlingment[Random().nextInt(listAlingment.length)];


          setState(() {});
        },
        child: Center(
            child:

                ///  Animated Pading:
                //   AnimatedPadding(padding: EdgeInsets.all(mPading),
                //       duration: Duration(seconds: 2),
                //
                //     child: Container(
                //       height: double.infinity,
                //       width: double.infinity,
                //       color: Colors.red,
                //     ),
                //
                //
                //   ),


                ///  Crossfading:  Marge
                // AnimatedCrossFade(
                //
                //     firstChild: Container(
                //       height: 200,
                //       width: 200,
                //       color: Colors.orange,
                //     ),
                //
                //     secondChild: Container(
                //       height: 200,
                //       width: 200,
                //       child: Center(
                //         child: Icon(
                //           Icons.home_filled,
                //           size: 100,
                //
                //         ),
                //       ),
                //     ),
                //     crossFadeState: showFirstChild
                //         ? CrossFadeState.showFirst
                //         : CrossFadeState.showSecond,
                //     duration: Duration(seconds: 2))

                 /// Animatated Opacity:
                //    AnimatedOpacity(
            //
            //      ///  Tow Componet
            //        opacity:mOpecity , duration:Duration(seconds: 2) ,
            //
            //    child: Container(
            //       height: mheight,
            //       width:mwidth,
            //      color: Colors.green,
            //    ),),


                /// Anmation Alignment:
            
                // Top left r pora centrloi ana hoise aitu align tu:
              // AnimatedAlign(alignment:mAlignemet  ,
              //     duration: Duration(seconds: 2),
              // child: Container(
              //   height: 100,
              //   width:100,
              //   color: Colors.green,
              // ),),
            
            //Random Alignment:

            // Random Alignmet:
                AnimatedAlign(alignment:mAlignemet ,
                  duration: Duration(seconds: 2),
              child: Container(
                height: 100,
                width:100,
                color: Colors.green,
              ),),

            ),
      ),
    );
  }
}
