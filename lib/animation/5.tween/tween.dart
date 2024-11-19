


import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App() );
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

///1. (mixin),TickerProvider:
class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

///2. Variable
  AnimationController?mController;

  /// 3.Double value animation: ji kora
  Animation<double>?doubleAnimation;
 Animation<double>?boredrAnimation;
 Animation<Color?>?colorsAnimation;

/// 4.Initialize Variable:
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// i.Operation Function:
    mController=AnimationController(vsync: this,duration: Duration(milliseconds: 1000));

    /// ii.100(S) pora 200(F) value loi jai position:
    ///Controller r value noloi Tween value lua hoise:Jate Container k place kuribor babe value,
    ///100 r pora 200 jabo aru 200 r pora  100 ahibo aitu iate logic logua hobo:Jene
    ///Animation Controller 0 pora 1 loike value pass (Defalut) hoi but amak lage je amr
    ///Controller tu  100 r pora 200 loi value jai so Anekua dhronor logic logabor babe
    ///Animation Controller r helpt t Tween animation tu animated kuri bo lagibo
    ///


    ///Tween: Tween object r pora Animation controller help t Animation creat hobo take
    ///Tween Animation buli kua hoi

    /// Tween r object tu animation t  place kora hoise attia error show kuribo first erro solve kuribor
    /// babe
    /// Tween object tu  Animation t itu karone place kora hoise je jatia Tween value ba object tu
    /// animated korarle controller r logt  tetia retrun r time Animation  retrun kore ai
    /// retrun animation tu ami utilize kora hobo

    /// .animation controller pua jai aru retrun aspect kore je animation of type double

   //Cruve Tween:red of change of animation respect ti time:last or first
    // time basi speed ba slowe ba round type kuri dibo pare:
    //
    doubleAnimation=Tween<double>(begin: 100.0, end: 200.0).animate(
        CurvedAnimation(parent: mController!, curve: Curves.bounceIn));

    //Nomrmal Tween : Speed  animation throuhout time  same thake aru linear curve
 //   doubleAnimation=Tween<double>(begin: 100.0, end: 200.0).animate(mController!);
    boredrAnimation=Tween<double>(begin: 0.0,end: 50.0).animate(mController!);
    colorsAnimation=ColorTween(begin: Colors.blue,end: Colors.red).animate(mController!);
    /// 3.Listner: Value print kuri sabo pare Iat kiman value move hoise buli
    mController!.addListener((){
      print(doubleAnimation!.value);
      print(mController!.value);
      print(colorsAnimation!.value);

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tween'),
      ),

      body:
          // child: Container(
          //   height: double.infinity,
          //   width:double.infinity,
          //   color: Colors.blue,
          // ),
      Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          /// 5.1 o pra 0 logic Aplly move:

          Container(
            /// i.100 r pora 200 lolike khuru danger logic apply
            // height: 200*mController!.value,
            // width: 200*mController!.value,

            /// ii.Iat Multiply nokra koi 100 pora 200 logic logabo parde:
            height: doubleAnimation!.value,
            width: doubleAnimation!.value,
            decoration: BoxDecoration(
              color:colorsAnimation!.value,
              borderRadius: BorderRadius.circular(boredrAnimation!.value)
            ),

          ),

          /// 4.Button  start
          ElevatedButton(onPressed: (){
            mController!.repeat(
              reverse: true
            );
          }, child: Text('Start')),
        ],
      ))


    );
  }
}