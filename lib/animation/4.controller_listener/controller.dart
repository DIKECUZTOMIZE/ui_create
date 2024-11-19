import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( App());
}


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return MaterialApp(
       home: HomePage(),
     );
  }
}

class HomePage  extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

/// 1.Mixin :SingleTicker
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

/// 2.Inialize globel Coltroller:
  AnimationController? mController;


/// 3. InState:
  @override
  void initState() {
    super.initState();


    /// 4.animationContorller r class object creat: kuri call kuribo lage,
    /// call korar loge loge Vsync showe (Async kuribor babe kam ahe)
    /// this mixin class tuk represent kurise
    /// Aitu duration tu a one r pora zero loike  time loi jabo,aru call function tut
    /// TickePovider need hoi karone this use kora jai jate Ticker r Function excuted hoi jai

    mController=AnimationController(vsync: this, duration: Duration(seconds: 3));

    ///6. addListener
    // value change kuribor babe setState lagobo loga hoise
    // 0 pora 1 loi vlue olp olp change hua dekha pua jabo
    //ai chang hua value tu UIt refeclt kuribor babr use kuribo lage addLisnter
    //aru iat rebile kuribor babe set state use kora jai
    mController!.addListener((){

      //listen check korar babe print kora hoise
      print(mController!.value);
      setState(() {});
    });

    //Start kuribor babe use forward aru judi button use kurile iate kuribi nlage forward
   // mController!.forward();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       body: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(

               ///5.Runtime t judi 0 r pora 1 loi jai TickerProvoder a tatia
               /// height and width 0 r pora 1 loi jaibo Ticker a multiple kurile
               /// Null check operator logabo lagibo a karon null operator luga karone variavle t
               height: 200*mController!.value,
               width: 200*mController!.value,
               color: Colors.blue,


             ),
              ElevatedButton(onPressed:  (){

            ///Normal
              // mController!.forward();

           ///  Repeat Mode use(BuDefaloult)
                //okle Dngr huatu dekha pai judi revers nologa
               mController!.repeat(

               //  revers use
                 reverse: true
               );

             }, child: Text('tab')),
           ],
         ),
       ),
     );



  }
}

/// 1st step (mixin) class Singel Ticker provider SateMixin use :
//Run timet diferent diferent value provive koribo pare
// StateFull undert initialize kuribor babe  Animation Controller lagibo Mixin,
// Ticker means: Durition timet clock r tick tick kora

/// 2nd step global variable creat :AnimationController?
//Initialize controller this variable aru initstate o initialize kuribo paribo karon
//StatfullWidget hoi .

/// animation meaning:
// Ai Animationr pora eta appt all place use kuribo paribo,
//Default value 0 start  pora 1 final loike positon change hoi  ,
// Ticker provider (mixin class):single Ticker provider,
//StateFull Widget Requerment for all Animation r karone  movment show korar babe Nije controller kurile