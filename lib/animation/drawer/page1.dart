import 'package:flutter/material.dart';


/// Dashboard, HoemPage,Drower:

class Page1 extends StatefulWidget{

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int selectedIndex=0;

  List<Map<String,dynamic>> drawerItems=[
  {
  'icon' :Icon(Icons.home),
    'title' : 'Home ',
    'page'  : Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Home'),
      ),
    )
  } ,
  {
  'icon' :Icon(Icons.account_circle_rounded),
    'title' : 'Profile ',
    'page'  : Container(
      color: Colors.grey,
      child:  Center(child: Text('Profile ')),
    )
  } ,
    {'icon': Icon(Icons.logout),
    'title':   'LogOut',
    'page': Container(
      color: Colors.blueAccent,

    )}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
      ),

      /// directly o kuribo pare:but kom decoration kuribo pare:
      drawer:Drawer(
        width: 300,
        elevation: 11,
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(21))),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              /// Header represent:
              headrLy(),

              /// BasiThoka pura space loi loi
              Flexible(child: ListView.builder(
                itemCount:drawerItems.length ,
                itemBuilder: (context, index) {

                var currentItems=drawerItems[index];
               return ListTile(
                 onTap: (){
                   selectedIndex=index;
                   setState(() {});
                   Navigator.pop(context);
                 },

                 textColor: Colors.white,
                 iconColor: Colors.white,
                 leading:  drawerItems [index]['icon'],
                 // currentItems['icon'],
                 title:Text('${currentItems['title']}')

                 //Text(' ${drawerItems[index]['title']}'),

               );
                        }
                ))
            ],
          ),
        ),

      ),


      ///   very details intigret:
      // Container(
      //   width: 200,
      //
      //   color: Colors.lightBlueAccent,
      // ),
      body: drawerItems[selectedIndex]['page'],
    );
  }

  /// Function
    Widget headrLy(){

    return ListTile(
      leading:   SizedBox(
        width: 70,
        height: 70,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('assets/img/bg_krishna.jpeg'),fit:BoxFit.cover)
          ),
        ),
      ),
      title: Text('Krishna'),
      subtitle: Text('SanjitKeleng5gmail.com'),
    );
    }
}