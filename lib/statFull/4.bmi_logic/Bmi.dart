import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //controller:
  TextEditingController wtControlar = TextEditingController();
  TextEditingController htInControlar = TextEditingController();
  TextEditingController htFtControlar = TextEditingController();

  //variable:
  String bmi='';
  Color bgCoolor=Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      //Colors logic:
      backgroundColor: bgCoolor,

      appBar: AppBar(
        title: Text('BMI'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            //1.Text Calculator:
            Text(
              'Calculator BMI',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            //space:
            SizedBox(
              height: 21,
            ),

            //2.weihgt:
            TextField(
              controller: wtControlar,
              decoration: InputDecoration(

                label: Text('Weight(in KGs)'),
                  hintText: 'Enter your weight here..',

                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21))),
            ),

            //space:
            SizedBox(
              height: 21,
            ),

            //3.height feet:
            TextField(
              controller: htFtControlar,
              decoration:  InputDecoration(
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),

                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),

                label:Text('Height (in Feets)') ,
                hintText:  'Enter your height in feet here '
              ),
            ),

            //space:
            SizedBox(
              height: 21,
            ),


            //4.height inch
            TextField(
              controller: htInControlar,
              decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),

                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),

                  label:Text('Height  (in Inches)') ,
                  hintText:  'Enter your height in inches here '
              ),
            ),

            //5.button
            ElevatedButton(
                onPressed:  (){

              num wt=double.parse(wtControlar.text.toString()) ;
              num htFeet=int.parse(htFtControlar.text.toString());
              num htInch=int.parse(htInControlar.text.toString()) ;


              //Feet pora Cm Pora M loi jua hoise
              num totalInches=(htFeet*12)+(htInch);
              num totalCm =totalInches*2.54;
              num totalM=totalCm/100;

              num bmiValue=wt/(pow(totalM, 2.0));

              //Stirng
              bmi ='your BMI is ${bmiValue.toStringAsFixed(2)}';

              //not String
              if(bmiValue>25){
                bgCoolor=Colors.red;
              }else if (bmiValue<18){
                bgCoolor=Colors.orange;
              }else{
                bgCoolor=Colors.green;
              }

             setState(() {});
            },

                child: Text('Calculator')),

            //space:
            SizedBox(height: 11,),

            //6.result:
            Text(bmi),

          ],
        ),
      ),
    );
  }
}
