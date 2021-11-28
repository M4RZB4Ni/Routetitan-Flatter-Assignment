import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/models/stop_data.dart';
import 'package:routetitan/views/map.dart';
import 'package:routetitan/views/stops.dart';
import 'package:provider/provider.dart';
import 'package:latlong2/latlong.dart';

class Hq extends StatefulWidget{
  const Hq({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HqState();
  }


}

class HqState extends State<Hq> with SingleTickerProviderStateMixin{
  late final TabController _tabController=TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {

    generateItems();



    return Scaffold(appBar:AppBar(backgroundColor: Colors.black,bottom:
    TabBar(
      onTap: (value) => false,
      controller: _tabController,
      tabs: [
        Consumer<StopData>(builder: (context, stopData, child) {
          return Tab(text: "STOPS(${stopData.stops.length})",);

        },),
        const IgnorePointer(child: Tab(text: "MAP",)),
      ],
    ),),body:  TabBarView(
      controller: _tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Stops(tabController: _tabController,),
          const Map()

    ],),);

  }

  void generateItems()
  {
    Provider.of<StopData>(context, listen: false).clearList();
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 94327569,address: "mazandaran,Downtown 1456 st number12",startTime: "22:00",endTime: "23:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(34.335608, 47.071007) );
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 15975364,address: "bandarabbas,Downtown 1456 st number12",startTime: "19:00",endTime: "20:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190939, 44.527242));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22335486,address: "sistan,Downtown 1456 st number12",startTime: "00:00",endTime: "01:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22335486,address: "Kermanshah,Downtown 1456 st number12",startTime: "08:00",endTime: "09:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22222222,address: "yazd,Downtown 1456 st number12",startTime: "09:00",endTime: "10:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22222222,address: "yazd,Downtown 1456 st number12",startTime: "09:00",endTime: "10:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 44444444,address: "shiraz,Downtown 1456 st number12",startTime: "11:00",endTime: "12:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 33333333,address: "isfehan,Downtown 1456 st number12",startTime: "10:00",endTime: "11:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 55555555,address: "armenia,Downtown 1456 st number12",startTime: "12:00",endTime: "13:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 66666666,address: "london,Downtown 1456 st number12",startTime: "13:00",endTime: "14:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 77777777,address: "liverpool,Downtown 1456 st number12",startTime: "14:00",endTime: "15:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 88888888,address: "berlin,Downtown 1456 st number12",startTime: "15:00",endTime: "16:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 99999999,address: "tokyo,Downtown 1456 st number12",startTime: "16:00",endTime: "17:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 12365498,address: "newyork,Downtown 1456 st number12",startTime: "17:00",endTime: "18:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 98745632,address: "whashington,Downtown 1456 st number12",startTime: "17:00",endTime: "19:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 95175348,address: "khozestan,Downtown 1456 st number12",startTime: "20:00",endTime: "21:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 16794583,address: "rasht,Downtown 1456 st number12",startTime: "21:00",endTime: "22:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 98436579,address: "golestan,Downtown 1456 st number12",startTime: "23:00",endTime: "00:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 14814655,address: "tabriz,Downtown 1456 st number12",startTime: "01:00",endTime: "02:00",estimatedTime: "1:00",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 48503628,address: "lavasan,Downtown 1456 st number12",startTime: "02:00",endTime: "03:30",estimatedTime: "1:30",taskState: "notSelected",destination: LatLng(40.190820, 44.530461));

  }

}