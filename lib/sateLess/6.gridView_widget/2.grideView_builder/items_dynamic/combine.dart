import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DynamicCombine());
}

class DynamicCombine extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Homepage(),
      );
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: dynamicCombineAppBar(),
        body: DynamicCombineBody(),
      );
}

PreferredSizeWidget dynamicCombineAppBar() => AppBar(
      centerTitle: true,
      title: Text('Combine Dynamic'),
    );

class DynamicCombineBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [

          Expanded(
            flex: 4,
            child: GridView.builder(
                gridDelegate:
                SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    childAspectRatio: 5 / 5,
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11),
            
                    itemCount: 10,
                     itemBuilder: (context, index) =>
                    Container(
                      color: Colors.green,
                    )),
          ),

          Expanded(
            flex: 3,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 4,
                     childAspectRatio: 5 / 5,
                     mainAxisSpacing: 11,
                    crossAxisSpacing: 11),

                     itemCount: 10,
                     itemBuilder: (context, index) =>
                    Container(
                      color: Colors.red,
                    )),
          ),

          //Breaket
        ],
      );
}
