import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: Row(
        children: [
          //1.Dish Name Details:
          Container(
            width: 300,
            padding:EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color:  Colors.black,width: 1)
            ),
            child: Column(
              children: [
                //Dish Name:
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff6f1fa),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Text(
                    "Strawberry Pavlova",
                    style: TextStyle(fontWeight: FontWeight.bold,),
                    textAlign:TextAlign.center,
                  ),
                ),

                //Dish Discription:
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff6f1fa),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Text(
                    "Pavlova is meringue-based"
                        "dessert named after the Russian"
                        "ballerine a crisp crust and"
                        "soft,kight inside,topped with fuirt"
                        "and whipped cream.",
                    textAlign: TextAlign.center,
                  ),
                ),

                //Dish Star:
                Container(
                  margin: EdgeInsets.only(bottom:20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff6f1fa),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [
                          Icon(Icons.star,size: 18,color:Colors.black.withOpacity(0.7),),
                          Icon(Icons.star,size: 18,color: Colors.black.withOpacity(0.7),),
                          Icon(Icons.star,size: 18,color: Colors.black.withOpacity(0.7)),
                          Icon(Icons.star,size: 18,color: Colors.black.withOpacity(0.7),),
                          Icon(Icons.star,size: 18,color: Colors.black.withOpacity(0.7),),
                        ]),
                        Text(
                          "170Reviews",
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ]),
                ),

                //Dish Ingr:
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff6f1fa),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment. spaceAround,
                    children: [
                      //Dish PREP:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.kitchen),
                          Text("PREP:"),
                          Text("25 min"),
                        ],
                      ),
                      //Dish COOK:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.alarm),
                          Text("COOK:"),
                          Text("1 hr"),
                        ],
                      ),
                      //Dish FEEDS:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.restaurant),
                          Text("FEEDS:"),
                          Text("4-6")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //2.Dish Image:
          SizedBox(
            width:600,
            child: Image(
              image: AssetImage(
                "assets/image/bg_cake_jpeg.jpeg",
              ), fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}