import 'package:latlong2/latlong.dart';

class StopItem{




  late int itemIndex;
  late String address;
  late String startTime;
  late String endTime;
  late String estimatedTime;
  late String taskState;
  late LatLng destination;



  void toggleState(String taskState) {
    this.taskState = taskState;
  }



  StopItem(
      {required this.itemIndex,
      required this.address,
      required this.startTime,
      required this.endTime,
      required this.estimatedTime,required this.taskState,required this.destination});


}