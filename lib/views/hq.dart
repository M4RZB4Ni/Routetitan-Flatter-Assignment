import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/views/map.dart';

class Hq extends StatefulWidget{
  const Hq({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HqState();
  }


}

class HqState extends State<Hq>{
  @override
  Widget build(BuildContext context) {
    //double w = MediaQuery.of(context).size.width;
   // double h = MediaQuery.of(context).size.height;
    return DefaultTabController(length: 2, child: Scaffold(appBar:AppBar(backgroundColor: Colors.black,bottom: const TabBar(
      tabs: [
        Tab(text: "STOPS()",),
        Tab(text: "MAP",),
      ],
    ),),body: const TabBarView(children: [
          Text("none"),
          Map()

    ],),)
    );
  }

}