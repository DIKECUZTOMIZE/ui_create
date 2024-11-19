import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DecorationApp());
}

class DecorationApp extends StatelessWidget {
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
      appBar: decorationAppBar(),
      body: DecorationBody(),
    );
  }
}

PreferredSizeWidget decorationAppBar() {
  return AppBar();
}

class DecorationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          //*1.Under Line Border Jitu Default Thake TextField luar dekha pua line:
          //*2.Property:
          //1.Focuse Border: jitu Tape kora pasot dekha pua jai,mane type kurobo paru,
          //2.Enable Border: jitu first  Dekha puatu (Under line) mane type nokorake mane type
          // kurile write kuribo pare(Focud hoi)
          //3.Disable border: jitu Jiman Tap kurilio Focus nohoi.
          //4.Error Border.  jitu first  Dekha puatu (Under line)

          //*1.Colors Border:
          TextField(
            decoration: InputDecoration(
              //*1.enable:
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),

              //*2.focused:
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.blue),
              ),

              //*3.Border:
              border: OutlineInputBorder(),

              //*4Desibale:Compelsory:By Default enable thake iate enable kuribo nalge.
              disabledBorder: OutlineInputBorder(),
            ),
          ),
          //*2.Extra decoration:
          TextField(
            decoration: InputDecoration(

          //*A.Help kora Mane Ami ki type kuribo lagibo mane hint dibo:
          hintText:"Password",

         //*B.Prefix:
    //      prefix: Text("Ms/Mr"),  // nije adjust nokre,nijir mote adjust kora:
            prefixIcon: Icon(Icons.email),    //nije adjust kuri loi.
            prefixText: "MS/MR",   //judi  typetu aru khose buji karne agr use kuribo pare .

         //*C.Suffix:
          suffixText: '@gmail.com',   //last tot use kore mane gmail burur babe use kora hoi mane easy hoi
          suffixIcon: Icon(Icons.add),
          suffix:
            Text("@gmail.com"),
            //Icon(Icons.accessible),

          //*D.Lebel:
              //*3.Lebel:more option:
              label: Icon(Icons.add),
             // Text("Email"),

              labelStyle: TextStyle(color: Colors.red),
              labelText:"Email",

           //*E.Special Caracter use:
             //     obscureText: true,
              //    obscuringCharacter:'\$' ,

                  //*1.Singl quet fixe: apostepost s,
                   // hintText: 'Enter your \'s password here',

                    //*2.Double Quet fixe:
                    //*  hintText: "Enter yous 's'",


              ),
            ),
        ],
      ),
    ));
  }
}
