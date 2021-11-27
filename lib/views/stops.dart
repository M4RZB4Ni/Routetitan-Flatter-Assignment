import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/models/stop_data.dart';
import 'package:provider/provider.dart';

class Stops extends StatefulWidget{
  const Stops({Key? key}) : super(key: key);

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

    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 94327569,address: "mazandaran,Downtown 1456 st number12",startTime: "22:00",endTime: "23:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 15975364,address: "bandarabbas,Downtown 1456 st number12",startTime: "19:00",endTime: "20:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22335486,address: "sistan,Downtown 1456 st number12",startTime: "00:00",endTime: "01:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22335486,address: "Kermanshah,Downtown 1456 st number12",startTime: "08:00",endTime: "09:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22222222,address: "yazd,Downtown 1456 st number12",startTime: "09:00",endTime: "10:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 22222222,address: "yazd,Downtown 1456 st number12",startTime: "09:00",endTime: "10:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 44444444,address: "shiraz,Downtown 1456 st number12",startTime: "11:00",endTime: "12:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 33333333,address: "isfehan,Downtown 1456 st number12",startTime: "10:00",endTime: "11:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 55555555,address: "armenia,Downtown 1456 st number12",startTime: "12:00",endTime: "13:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 66666666,address: "london,Downtown 1456 st number12",startTime: "13:00",endTime: "14:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 77777777,address: "liverpool,Downtown 1456 st number12",startTime: "14:00",endTime: "15:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 88888888,address: "berlin,Downtown 1456 st number12",startTime: "15:00",endTime: "16:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 99999999,address: "tokyo,Downtown 1456 st number12",startTime: "16:00",endTime: "17:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 12365498,address: "newyork,Downtown 1456 st number12",startTime: "17:00",endTime: "18:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 98745632,address: "whashington,Downtown 1456 st number12",startTime: "17:00",endTime: "19:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 95175348,address: "khozestan,Downtown 1456 st number12",startTime: "20:00",endTime: "21:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 16794583,address: "rasht,Downtown 1456 st number12",startTime: "21:00",endTime: "22:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 98436579,address: "golestan,Downtown 1456 st number12",startTime: "23:00",endTime: "00:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 14814655,address: "tabriz,Downtown 1456 st number12",startTime: "01:00",endTime: "02:00",estimatedTime: "1:00",taskState: "notSelected");
    Provider.of<StopData>(context, listen: false).addStops(itemIndex: 48503628,address: "lavasan,Downtown 1456 st number12",startTime: "02:00",endTime: "03:30",estimatedTime: "1:30",taskState: "notSelected");


   return Scaffold(backgroundColor: const Color(0xff53676d),body: Consumer<StopData>(builder: (context, stopData, child) {
     return ListView(children: stopData.stops.map((stop) =>
         InkWell(onTap:() {
           stopData.unselectAll();
           stopData.selectStop(stop);
         }
         ,child: Card(
               elevation: 0,
         key: Key('${stopData.stops.indexOf(stop)}'),
         color: stop.taskState=="Finished" ? const Color(0xff53676d): stop.taskState=="Selected" ? Colors.white : Colors.grey.shade400,child: InkWell(child:Padding(padding: const EdgeInsets.all(6),
         child:Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             stop.taskState=="Finished" ?

             Padding(
               padding: const EdgeInsets.only(right: 8),
               child: Container(width: w*0.15,height: h*0.07,
                   decoration:  const BoxDecoration(shape: BoxShape.circle,color:  Color(0xff4688f1)),
                   child: const Center(child: Icon(Icons.check,size: 24,color: Colors.white,)))) :

             stop.taskState=="Selected" ?
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
                   visible: stop.taskState=="Selected",
                   child: const Divider(thickness: 1,color: Colors.grey,height: 1)),
                 Visibility(
                     visible: stop.taskState=="Selected",
                     child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         IconButton(onPressed: () {
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