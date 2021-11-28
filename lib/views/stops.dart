import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/models/stop_data.dart';
import 'package:provider/provider.dart';

class Stops extends StatefulWidget{
  final TabController tabController;

  const Stops({Key? key,required this.tabController}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return StopsState();
  }

}

class StopsState extends State<Stops>{

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;




    // List<StopItem> stopsList = [
    //  
      
    // ];



   return Scaffold(backgroundColor: const Color(0xff53676d),body: Consumer<StopData>(builder: (context, stopData, child) {
     return ListView(children: stopData.stops.map((stop) =>
         InkWell(onTap:() {
          // stopData.unselectAll();
           stopData.selectStop(stop);
         }
         ,child: Card(
               elevation: 0,
         key: Key('${stopData.stops.indexOf(stop)}'),
         color: stop.taskState=="Finished" ? const Color(0xff53676d): stop.taskState=="Selected" || stop.taskState=="SelectedAndNavigated" ? Colors.white : Colors.grey.shade400,child: InkWell(child:Padding(padding: const EdgeInsets.all(6),
         child:Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             stop.taskState=="Finished" ?

             Padding(
               padding: const EdgeInsets.only(right: 8),
               child: Container(width: w*0.15,height: h*0.07,
                   decoration:  const BoxDecoration(shape: BoxShape.circle,color:  Color(0xff4688f1)),
                   child: const Center(child: Icon(Icons.check,size: 24,color: Colors.white,)))) :

             stop.taskState=="Selected" || stop.taskState=="SelectedAndNavigated" ?
             Padding(padding: const EdgeInsets.only(right: 8),
                 child: Container(width: w*0.15,height: h*0.07,
                     decoration:  const BoxDecoration(shape: BoxShape.circle,color:  Color(0xffE90052)),
                     child: Center(child: Text(stop.itemIndex.toString().substring(0,1),
                       style: Theme.of(context).textTheme.headline1,))))

                 :
             Padding(padding: const EdgeInsets.only(right: 8),
                 child: Container(width: w*0.12,height: h*0.06,
                     decoration:  const BoxDecoration(shape: BoxShape.circle,color:  Color(0xffdedede)),
                     child: Center(child: Text(stop.itemIndex.toString().substring(0,1),
                       style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87),)))),

             Expanded(child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     stop.taskState=="Finished" ?
                     Text(stop.itemIndex.toString(),style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey.shade500),) :
                        Text(stop.itemIndex.toString(),style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87),) ,

                     Visibility(visible: stop.taskState!="Finished"
                       ,child: Text(stop.estimatedTime,style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.lightGreen),)),
                   ],),
                 Padding(
                   padding: const EdgeInsets.only(top: 8,bottom: 15),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(constraints: BoxConstraints(maxWidth: w/2.5),child: Text(stop.address.toString(),maxLines: 2,style: Theme.of(context).textTheme.bodyText1)),
                       Visibility(visible: stop.taskState!="Finished"
                           ,child: Text("${stop.startTime} - ${stop.endTime}",style: Theme.of(context).textTheme.bodyText1)),
                     ],),
                 ),
                 Visibility(
                   visible: stop.taskState=="Selected" || stop.taskState=="SelectedAndNavigated",
                   child: const Divider(thickness: 1,color: Colors.grey,height: 1)),
                 Visibility(
                     visible: stop.taskState=="Selected" || stop.taskState=="SelectedAndNavigated",
                     child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         IconButton(onPressed: () {
                           stopData.navigateStop(stop);

                           widget.tabController.animateTo(1);

                         }, icon: const Icon(Icons.navigation,color: Colors.blue),iconSize: 35,),
                         Text("Navigate",style: Theme.of(context).textTheme.subtitle1,)
                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         IconButton(onPressed: () {
                           stopData.finishStop(stop);
                         }, icon: const Icon(Icons.check,color: Colors.blue),iconSize: 35,),
                         Text("Finish",style: Theme.of(context).textTheme.subtitle1,)
                       ],
                     ),
                   ],))
               ],)),
           ],)))))).toList(),

     );
   },));




  }



}