import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: flutterAppBar(),
      body:  FlutterBody() ,
    ); // TODO: implement build
  }
}

PreferredSizeWidget flutterAppBar() {
  return AppBar();
}

class FlutterBody extends StatelessWidget {

  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //1.
          TextField(
            controller: Email,
            onChanged: (value) {
              print("value: $value");
            },
          ),
          //2.
          TextField(

            //*3.Text Boton Controlar Pass Value:
            controller:Password,

            //*4. Search(operation paerfrom babe use )bina Controlar : annominus Fuction
            onChanged: (value){
              print(value);
            },
          ),

          //Button
          ElevatedButton(
              onPressed: () {
                print("value: ${Email.text}");
                print("value: ${Password.text}");
              },
              child: Text("Press")),
        ],
      ),
    );
  }
}
