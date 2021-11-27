import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/models/stop_data.dart';
import 'package:routetitan/views/map.dart';
import 'package:routetitan/views/stops.dart';
import 'package:provider/provider.dart';

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
    return DefaultTabController(length: 2, child: Scaffold(appBar:AppBar(backgroundColor: Colors.black,bottom:
    TabBar(
      tabs: [
        Consumer<StopData>(builder: (context, stopData, child) {
          return Tab(text: "STOPS(${stopData.stops.length})",);

        },),
        const Tab(text: "MAP",),
      ],
    ),),body: const TabBarView(children: [
          Stops(),
          Map()

    ],),)
    );
  }

}