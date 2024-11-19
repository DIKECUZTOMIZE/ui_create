import 'package:flutter/material.dart';

import '2.body.dart';

class NavigationPushBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NaviagationBody2()));
        },

        child: Center(child: Text('next page',
            style: TextStyle(color: Colors.white),),
        ),


        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color(0xff388b24),
        )),
      );
}
