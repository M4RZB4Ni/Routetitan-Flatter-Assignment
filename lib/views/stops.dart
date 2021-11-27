import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routetitan/models/stop_model.dart';

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
   // final items = Provider.of<StopItem>(context);
   // bool stopSelected = false;

    var stopsList = [
      StopItem(itemIndex: 11111111,address: "Kermanshah,Downtown 1456 st number12",startTime: "08:00",endTime: "09:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 22222222,address: "yazd,Downtown 1456 st number12",startTime: "09:00",endTime: "10:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 33333333,address: "isfehan,Downtown 1456 st number12",startTime: "10:00",endTime: "11:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 44444444,address: "shiraz,Downtown 1456 st number12",startTime: "11:00",endTime: "12:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 55555555,address: "armenia,Downtown 1456 st number12",startTime: "12:00",endTime: "13:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 66666666,address: "london,Downtown 1456 st number12",startTime: "13:00",endTime: "14:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 77777777,address: "liverpool,Downtown 1456 st number12",startTime: "14:00",endTime: "15:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 88888888,address: "berlin,Downtown 1456 st number12",startTime: "15:00",endTime: "16:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 99999999,address: "tokyo,Downtown 1456 st number12",startTime: "16:00",endTime: "17:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 12365498,address: "newyork,Downtown 1456 st number12",startTime: "17:00",endTime: "18:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 98745632,address: "whashington,Downtown 1456 st number12",startTime: "17:00",endTime: "19:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 15975364,address: "bandarabbas,Downtown 1456 st number12",startTime: "19:00",endTime: "20:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 95175348,address: "khozestan,Downtown 1456 st number12",startTime: "20:00",endTime: "21:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 16794583,address: "rasht,Downtown 1456 st number12",startTime: "21:00",endTime: "22:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 94327569,address: "mazandaran,Downtown 1456 st number12",startTime: "22:00",endTime: "23:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 98436579,address: "golestan,Downtown 1456 st number12",startTime: "23:00",endTime: "00:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 22335486,address: "sistan,Downtown 1456 st number12",startTime: "00:00",endTime: "01:00",estimatedTime: "1:00"),
      StopItem(itemIndex: 14814655,address: "tabriz,Downtown 1456 st number12",startTime: "01:00",endTime: "02:00",estimatedTime: "1:00"),

    ];


    return ListView.builder(
        itemCount: stopsList.length,
        itemBuilder: (context, index) {
          return Card(child: InkWell(child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: w*0.15,height: h*0.07,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffE90052)),child: Center(child: Text(stopsList[index].itemIndex.toString().substring(0,1),style: Theme.of(context).textTheme.headline1,)),),

              Expanded(child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(stopsList[index].itemIndex.toString(),style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black),),
                      Text(stopsList[index].estimatedTime,style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.lightGreen),),
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(constraints: BoxConstraints(maxWidth: w/2.5),child: Text(stopsList[index].address.toString(),maxLines: 2,)),
                      Text("${stopsList[index].startTime} : ${stopsList[index].endTime}"),
                    ],)
                ],)),
            ],)),
          );
        },

    );
  }

}