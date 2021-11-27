
class StopItem{




  late int itemIndex;
  late String address;
  late String startTime;
  late String endTime;
  late String estimatedTime;
  late bool taskStopped;



  void toggleStop() {
    taskStopped = !taskStopped;
  }



  StopItem(
      {required this.itemIndex,
      required this.address,
      required this.startTime,
      required this.endTime,
      required this.estimatedTime,required this.taskStopped});


}