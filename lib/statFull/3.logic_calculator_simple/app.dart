import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void   main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:simpleAppBar(),
    body:Body() ,
  );
}

PreferredSizeWidget simpleAppBar(){
  return AppBar(
    backgroundColor: Colors.orangeAccent,
    centerTitle: true,
    title: Text("Calculator",style: TextStyle(
      color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold
    ),),
  );
}

 class Body extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Body();
 }


 class _Body extends State<Body>{

  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();

  int flag =0;

  String result='';


  @override
  Widget build(BuildContext context) =>SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [

        //Textfied:
          Container(
            width: 200,
            height: 50,
            child: TextField(

              controller : no1Controller,

              decoration: myTextFeild(),
            ),
          ),

          //space:
          SizedBox(
            height: 20,
          ),

          //Textfield:
          Container(
            width: 200,
            height: 50,
            child: TextField(
              controller: no2Controller,
              decoration: myTextFeild(),
            ),
          ),

           //Space:
           SizedBox(
             height: 20,
           ),

           //add,sub,multi,division:
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                InkWell(
                   onTap: (){
                     flag=1;
                     setState(() {});
                   },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration:  mydecoration(flag ==1? true:false),
                     
                    child: Text("+",style: TextStyle(color: Colors.white,
                        fontSize: 30),
                      textAlign: TextAlign.center,),
                  ),
                ),
                
                InkWell(
                    onTap: (){
                      flag=2;
                      setState(() {});
                    },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: mydecoration(flag==2 ? true:false),
                  
                    child: Text("-",style: TextStyle(color: Colors.white,
                        fontSize: 30),
                      textAlign: TextAlign.center,),
                  ),
                ),
                
                InkWell(
                  onTap:(){
                    flag=3;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: mydecoration(flag==3 ? true:false),
                  
                    child: Text("*",style: TextStyle(color: Colors.white,
                        fontSize: 30),
                      textAlign: TextAlign.center,),
                  ),
                ),
                
                InkWell(
                  onTap: (){
                    flag=4;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration:  mydecoration(flag ==4? true :false),
                  
                    child: Text("/",style: TextStyle(color: Colors.white,
                        fontSize: 30),
                      textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
            //Space:
          SizedBox(
            height: 20,
          ),

          //Get Value:
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.1),
              border: Border.all(color:Colors.black.withOpacity(.2))
            ),
              width: double.infinity,
              child: Text('$result',style: TextStyle(
                  color: Colors.black,fontSize: 30),textAlign: TextAlign.center,)),

          //space:
          SizedBox(
            height: 20,
          ),

          //button:
          FloatingActionButton(onPressed: (){
            int no1=int.parse(no1Controller.text);
            int no2=int.parse(no2Controller.text);

            if (flag==1){
              result= '${no1+no2}';
            }
            else if(flag==2){
              int sub=0;
               if(no1>no2){
                 sub=no1-no2;
               }
               else {
                 sub =no2-no1;
               }
               result='$sub';
            }
            else if(flag==3){
              result='${no1*no2}';
            }
            else  if (flag==4){
              result ='${no1/no2}';
          }
            else  {
              result='Choose operator';
            }
            setState(() {});

          },
          child: Text("Get",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.orangeAccent,)
        ],
      ),
    ),

  );



//*Simler ui huar babe eta function bonai khokulote use kora hoise:

//add,sub,multi,division:decoration
  BoxDecoration mydecoration(bool isSelected){

  return BoxDecoration(
    border: isSelected ? Border.all(color:Colors.yellow,width:2):
    Border.all(color: Colors.transparent),

    borderRadius: BorderRadius.circular(5),
    color:AppColors.primaryColors ,
  );
}

//Text Field Decoration:
  InputDecoration myTextFeild()=>InputDecoration(
//Fcused:
  focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(5),
  borderSide: BorderSide(color: Colors.black,width: 2),
  ),
//enable:
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.black,width: 2)
    )
);
}

//Colors decoration:
class AppColors {
  static Color primaryColors = Color(0xff239c08);
}



//*Kenkoi creat kora hoise step by step dia hoise:

//Ui Compelet kuri lobo lage frist:
//All operator use Inkwell :Karon tab r karine,

//Controla Creatn kuri Textfield put kuribo lage,
//Operator Inkwell Button burt Controller use

//Variavle Flag creat kuri Inke well operator burot use kuribo lage onTap(){}
//Function bonai Defination dibo lage jate gom pai kuntu ki button use hoise nanai

//Variable result cerat kurobo lage String aru default value t,
//tarpidot get value showt text $ doller use kuribo lage jate default value 0 hoi,
//mane dekha napai,

//String to convert int :controller thoka text valu2 convert kuribor babe int.pars
//kora hoi aru controller value anibor babe 0 use kora hoi,
//int no1=int.parss(controller.text) :iatu textu convert hoi jabo int

//Logic logabor babe Floating button t defination dibo lage:condition logai:
//If use kora hobo 1==1 tarmane + button click kora hoise

// iar pasot value change kuribor babe setstate use kuribo lagibo

//last judi Ink operator bur feel kuribor babe use kora bool karon trenary operation
//kora hoi flag ==1 ? true : flase; decoration peramater t(),
//tarpisot value change use kurobo lagobo with colors