import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/models/stop_model.dart';
import 'package:latlong2/latlong.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StopData extends ChangeNotifier{

  List<StopItem> stops = [];

  void selectStop(StopItem stopItem){
    unselectAll();
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
        if(stops[i].taskState=="Selected" || stops[i].taskState=="SelectedAndNavigated")
          {
            stops[i].taskState="UnSelected";
          }
       // notifyListeners();

      }
  }
  LatLng getSelected()
  {

    try{
      return stops.where((item) => item.taskState=="SelectedAndNavigated").first.destination;
    }catch (e){
      try {
         return stops.where((item) => item.taskState=="Selected").first.destination;
      } catch(e) {
            return stops.first.destination;

      }
    }

  }

  void finishStop(StopItem stopItem) async{
    if(stopItem.taskState=="SelectedAndNavigated") {
      stopItem.toggleState("Finished");
      notifyListeners();
    }else{
      Fluttertoast.showToast(
          msg: "You must Navigate to Dest First!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }
  void navigateStop(StopItem stopItem){
    if(stopItem.taskState=="Selected") {
      stopItem.toggleState("Navigate");
      stopItem.toggleState("SelectedAndNavigated");
      notifyListeners();
    }
  }
  void clearList()
  {
    stops.clear();
  }
  void addStops({required int itemIndex,
    required String address,
    required startTime,
    required endTime,
    required estimatedTime,required taskState,required destination})
  {
    final stop=StopItem(itemIndex: itemIndex, address: address, startTime: startTime, endTime: endTime, estimatedTime: estimatedTime, taskState: taskState,destination: destination);
    stops.add(stop);
   // notifyListeners();
  }

}