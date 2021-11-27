import 'package:flutter/foundation.dart';
import 'package:routetitan/models/stop_model.dart';

class StopData extends ChangeNotifier{

  List<StopItem> stops = [];

  void updateStop(StopItem stopItem){
    stopItem.toggleStop();
    notifyListeners();
  }

  void addStops({required itemIndex,
    required address,
    required startTime,
    required endTime,
    required estimatedTime,required taskStopped})
  {
    final stop=StopItem(itemIndex: itemIndex, address: address, startTime: startTime, endTime: endTime, estimatedTime: estimatedTime, taskStopped: taskStopped);
    stops.add(stop);
   // notifyListeners();
  }

}