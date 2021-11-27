import 'package:flutter/material.dart';

class StopItem extends ChangeNotifier{




  late int itemIndex;
  late String address;
  late String startTime;
  late String endTime;
  late String estimatedTime;
  var _stopState="none";

  get stopState => _stopState;

  set stopState(stopState) {
    _stopState = stopState;
  }

  void toggleSelected(int index) {
    itemIndex = index;
    notifyListeners();
  }

  StopItem(
      {required this.itemIndex,
      required this.address,
      required this.startTime,
      required this.endTime,
      required this.estimatedTime});
}