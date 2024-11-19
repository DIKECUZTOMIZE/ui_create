import 'package:flutter/material.dart';

//*Layout Widget:    1.Row , 2.Column ,3.Wrap, 4.SingleChildScrollView

//*Raw and Column and Container:
//*Raw : Raw Under (Raw and Column and Ciuntainer),Modify,Multiple use;
//*Column : Raw Under (Raw and Column and Ciuntainer),Modify,Multiple use;
//*Container : Raw Under (Raw and Column and Ciuntainer),Modify,Multiple use;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
    );
  }
}

PreferredSizeWidget MyAppBar() {
  return AppBar(
    backgroundColor: Colors.lightGreenAccent,
  );
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //*1.Single  Componet:
/*return Center(
  child: Text("Sanjit",style:TextStyle(color: Colors.blue,fontSize: 34),));*/

//*2.Multiple Componet:
    //*A.Row Multiple Text writr: Eta Row linet
/*    return Center(
      child: Row(
          children: [
            Text("Sanjit Keleng",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
            ),
            Text("Putu Keleng", style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Text("mai", style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            Text(
              "Kaka",
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
            Text(
              "bow",
              style: TextStyle(color: Colors.lime, fontSize: 20),
            ),
          ]
      ),*/
    //*B.Column Multiple text write:Eta Column Linet
/* return Center(
     child: Column(
          children: [
             Text(
          "Sanjit Keleng",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 45,
          ),
        ),
             Text(
          "Putu Keleng",
          style: TextStyle(color: Colors.blue, fontSize: 40),
        ),
             Text(
          "mai",
          style: TextStyle(color: Colors.red, fontSize: 35),
        ),
             Text(
          "Kaka",
          style: TextStyle(color: Colors.teal, fontSize: 30),
        ),
             Text(
          "bow",
          style: TextStyle(color: Colors.lime, fontSize: 25),
        ),
      ]
      ),
    );*/

//*3.Multiple Componet and Raw and Column Multiple Componet(Container khoite):

//*A. Container Details:
//     return Center(
//       child: Container(
//         height: 300,
//         width: 300,
//
// //*Text: Container Bhitorot Text use but decoration Bahirot use: key(child:)
// //       child:Center(
//
//         child: Text(
//           "Sanjit keleng ",
//           textAlign: TextAlign.start,
//           style: TextStyle(color: Colors.amber, fontSize: 30),
//         ),
//
//         decoration: BoxDecoration(
//             //decoration use khai karone iar bhitorot use:
//             color: Colors
//                 .indigoAccent, //judi decoration use nokurile conatiner bhitort direct use.
//
// //*Radius:
//             // borderRadius: BorderRadius.only( topRight: Radius.circular(23)) //*only
//             // borderRadius: BorderRadius.all(Radius. elliptical(45,24))//all
//             borderRadius: BorderRadius.zero,
//             // borderRadius: BorderRadius.horizontal( right: Radius.circular(50))
//             // borderRadius: BorderRadius.vertical(bottom:Radius.elliptical(50,50)),
//
//             //* boxShap:
//             //shape: BoxShape.circle,   //Radius aru shap duta dibo nuare error show kuribo
//
// //*Border:    OutLine:
//             //  border:Border(top:BorderSide(color: Colors.black,width: 5,))
//             border: Border.all(
//               //    color: Colors.deepPurple,  // Normal
//               color: Colors.black.withOpacity(.100), //transparent
//               width: 5,
//               strokeAlign: BorderSide.strokeAlignCenter, //center,outside
//             ),
//
// //*BoxShadw:
//             boxShadow: [
//               BoxShadow(color: Colors.black, offset: Offset(23, 34))
//             ]),
//       ),
//     );

//*B.1. Row and Cointainer: Raw bhitort Multiple container use

    return

    //Layout Widget:
    //1.Row:
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ //Jimant add kora componet Iar Bhitort:(RAW)
          Container(
              width: 100,
              height: 50,
              color: Color(0xff73cfe7),
              child: Text("sanjit",style: TextStyle(fontSize: 30),)
          ),   //direct color dibo pare


          Container(
            width: 100,
            height: 50,
            color: Colors.blue,
            child: Text("sanjit",style: TextStyle(fontSize: 30),),
          ),


          Container(
            width: 100,
            height: 50,
            color: Colors.deepPurple,
            child: Text("sanjit",style: TextStyle(fontSize: 30),),
          ),
        ],
      );

    //*2.
    /* Row(
      children:[ //Jimant add kora componet Iar Bhitort:(RAW)
        Container(
          width: 100,
          height: 300,
          color: Color(0xff73cfe7),   //direct color dibo pare
          // child:Text("sanjit keleng",style: TextStyle(color: Colors.amber,fontSize: 50),),   //direct text likhibo pare coma di(,)
        ),

        Container(
          width: 100,
          height: 250,
          color: Colors.blue,
          child: Text("sanjit",),
        ),

        Container(
          width: 100,
          height: 200,
          color: Colors.deepPurple,
        ),
      ],
      );*/

    //*C Column and Conatiner :
    /* Column(
          mainAxisAlignment: MainAxisAlignment.  start,
        children: [
         Container(
            color: Colors.lime,
              width: 500,
              height: 50,
              child:
               Text("sanjit",
                  style: TextStyle(fontSize: 30),
                  textAlign:TextAlign.center,
                ),

              ),

            Container(
              width: 500,
              height: 40,
              color: Colors. blueAccent,
              child: Text("putu",style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,),
            )
      ],
    );*/
  }
}
