import 'package:flutter/material.dart';
//import 'package:sanjit/App_color.dart';


//*Colors Deep Hexa Decimle Number:1-15,
//*1.RGB(fff),2.RRGGBB(ffffff),3.0x RRGGBB(0x ffffff):
//*Separet Creat Colors Class for Multiple Use :
//* Static Predefiend Class ,Normal Class(Creat Object), Static Class(Not creat object),
// *Static finalClass(GlobalY Acess)(not Creat Objecrt),

void main() {
  runApp(MySanjitApp());
}

class MySanjitApp extends StatelessWidget {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.limeAccent,
        child: Icon(
          Icons.accessible,
          color: Colors.blueAccent,
        ),
      ),
      appBar: MyAppBar(),
      body: MyBodyPart(),
    );
  }
}

PreferredSizeWidget MyAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    title: Text(
      "Home",
      style: TextStyle(
      //    color: AppColor.primaryColors,
          fontSize: 30,
          fontWeight: FontWeight.bold),
    ),
  );
}

class MyBodyPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcom",
        style: TextStyle(

          //*Colrs Detisl use:
          //* Normal class Color Change manualy:(class AppColor)
          //color: AppColor().mainColors,

          //*Static class Change but not creat object ,directly use :(Class AppColor)
          // color:AppColor.mainColors,

          //*Static Peridefind class:
          // color: Color(0xff0e59f1),

          //*Globaly Color Acess:
          //  color:AppColor.primaryColors ,

            fontSize: 34),
      ),
    );
  }
}
