import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/models/stop_data.dart';
import 'package:routetitan/views/map.dart';
import 'package:routetitan/views/stops.dart';
import 'package:provider/provider.dart';
import 'package:location/location.dart';

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
    ),),body:  TabBarView(children: [
          const Stops(),
          Map(locationData: getCurrentLocation(),)

    ],),)
    );
  }


  getCurrentLocation() async
  {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
  }
  late Location location;
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;
  @override
  void initState() {
    location =  Location();
    //getCurrentLocation();
  }
}