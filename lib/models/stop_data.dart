import 'package:flutter/foundation.dart';
import 'package:routetitan/models/stop_model.dart';

class StopData extends ChangeNotifier{

  List<StopItem> stops = [];

  void selectStop(StopItem stopItem){
    if(stopItem.taskState!="Finished") {
      stopItem.taskState == "Selected" ?
      stopItem.toggleState("UnSelected") : stopItem.toggleState("Selected");
      notifyListeners();
    }
  }
  void unselectAll()
  {
    for(int i=0;i<stops.length;i++)
      {
        if(stops[i].taskState=="Selected")
          {
            stops[i].taskState="UnSelected";
          }
        notifyListeners();

      }
  }
  void finishStop(StopItem stopItem){
    stopItem.toggleState("Finished");
    notifyListeners();
  }
  void addStops({required itemIndex,
    required address,
    required startTime,
    required endTime,
    required estimatedTime,required taskState})
  {
    final stop=StopItem(itemIndex: itemIndex, address: address, startTime: startTime, endTime: endTime, estimatedTime: estimatedTime, taskState: taskState);
    stops.add(stop);
   // notifyListeners();
  }

}