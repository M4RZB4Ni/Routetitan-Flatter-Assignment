import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import "package:flutter_map/flutter_map.dart";
import 'package:location/location.dart';

class Map extends StatefulWidget{
  LocationData locationData;
   Map({Key? key,required this.locationData}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MapState();
  }


}

class MapState extends State<Map>
{
  @override
  Widget build(BuildContext context) {

    //51.9029944,4.4600493,15

    final routtitanOffice = LatLng( 51.9029944,4.4600493);

    return Scaffold(body: Stack(children: [
      FlutterMap(
        options: MapOptions(center: routtitanOffice, zoom: 13.0),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
                "{z}/{x}/{y}.png?key={apiKey}",
            additionalOptions: {"apiKey": "8wnw2i6zQJpAAgtG99gCCzA4Fv5D3RhT"},
          )
        ],
      )
    ],)
      ,);
  }

}

