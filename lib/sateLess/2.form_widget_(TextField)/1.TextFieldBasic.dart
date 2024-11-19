import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TextApp());
}

class TextApp extends StatelessWidget {
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
      appBar: textAppBar(),
      body: TextBody(),
    );
  }
}

PreferredSizeWidget textAppBar() {
  return AppBar();
}

class TextBody extends StatelessWidget {
  TextEditingController nameControlar = TextEditingController();
  //Name contoral :Ami user dia iput tu control kuribo paru tar babe use kora hoi:(value)store:
  // TextEditingController nameComtorlar =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              TextField(
                //1.line maintan:
                minLines: 2,
                maxLines: 4,

                //2.Keyboard:
                keyboardType: TextInputType.text,

                //3.Text Boton Controlar Pass Value:
                controller: nameControlar,

                //4. Search(operation paerfrom babe use )bina Controlar : annominus Fuction
                onChanged: (value) {
                  print(value);
                },
              ),

              //3.TextBotton:User iput:

              ElevatedButton(
                  onPressed: () {
                    print("value: ${nameControlar.text}");
                  },
                  child: Text("loging")),
            ])));
  }
}
