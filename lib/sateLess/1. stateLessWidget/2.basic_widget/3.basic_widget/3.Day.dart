import 'package:flutter/material.dart';

//*Body modify :
//* Countaner:  olpman new widget:Box bonua aru box Decaration kora:
//*Decoration:Border,Shap,Radius,Shadow,

void main() {
  runApp(AppSanjit());
}

class AppSanjit extends StatelessWidget {
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
      appBar: MyAppBar(),
      body: MyBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

PreferredSizeWidget MyAppBar() {
  return AppBar(
    title:
    const Text("Home", style: TextStyle(color: Colors.black, fontSize: 50)),
    backgroundColor: Colors.green,
  );
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

    //3.Basic Widget:
      Padding(
      padding: const EdgeInsets.all(8.0),

      //2.Basic Widget:
      child: Center(

      //1.Basic Widget:
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.white,

              //*border outline:
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),

              //*box tu modify carculr,regtangl ji kora:
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(49),

              //*singl side modify:
              // borderRadius: BorderRadius.only(        //option all ,side ase
              //   topLeft: Radius.circular(45),
              //   bottomLeft: Radius.circular(45),

              //*box sadow:
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  spreadRadius: 10,
                )
              ]),
        ),

      //4.SizeBox:


      ),
    );
  }
}
