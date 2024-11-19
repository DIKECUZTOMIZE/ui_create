import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//Padind Details:
//SingleChilsScrollView:
//Image:Radiush

class FaceBookBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //Rap Pading kuribo pare column oport:but margin and pading rap nokora koi use kuribo nuare:
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //Image:
              // SizedBox(
              //   height: 150,
              //   width: 150,
              //   child:
              //1.height and width adjust roundkuribor babe,
              //ClipOval(

              //2.all side ba one and tow side use kuribor babe use kora hoi:
              // ClipRRect(borderRadius: BorderRadius.circular(14),

              //3. Image decoration:
              //  Padding(padding:EdgeInsets.symmetric(horizontal: .21),  //rap pading child:
              //   child:
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 21),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage("assets/image/bg_nt.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
              //)

              //Space:
              SizedBox(
                height: 50,
              ),
              //Name Details:
              Container(
                // padding: EdgeInsets.all(12),  old pading
                //  decoration: BoxDecoration(
                //  border: Border.all(color: Colors.black, width: 1)),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1)),
                      child: Text(
                        "Practise",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Text(
                        "uhdgcuhsadhahjbjhabdjhabgjhhjjhbjhbjsdhgvdsc"
                            "jvgdhgvjhggkghkuhkudhsihcildshihisdugicgigiscd"
                            "hidshicuhsdiuhciuhsiuhciuhsihcsihicsd"
                            "fjdiufiudfuidfuoiodifoisduf9wehi9u",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xff0a0204).withOpacity(.4),
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xff0a0204).withOpacity(.4),
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xff0a0204).withOpacity(.4),
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xff0a0204).withOpacity(.4),
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xff0a0204).withOpacity(.4),
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xff0a0204).withOpacity(.4),
                              ),
                            ],
                          ),
                          Text(
                            "170Rivews",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.kitchen),
                              Text("PRF:"),
                              Text("1 hr"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.alarm),
                              Text("CLOCK:"),
                              Text("30 min"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant),
                              Text("ITEMS:"),
                              Text("24 hr"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
