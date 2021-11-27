import 'package:flutter/material.dart';
import 'package:routetitan/views/stops.dart';

class StopItem extends StatefulWidget{




  late int itemIndex;
  late String address;
  late String startTime;
  late String endTime;
  late String estimatedTime;
  late int stopState;



  void toggleSelected(int index) {
    itemIndex = index;
  }


  StopItem.none({Key? key}) : super(key: key);

  StopItem(
      {Key? key, required this.itemIndex,
      required this.address,
      required this.startTime,
      required this.endTime,
      required this.estimatedTime,required this.stopState}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StopsState();
  }
}