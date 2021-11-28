import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import "package:flutter_map/flutter_map.dart";
import 'package:location/location.dart';
import 'package:routetitan/models/stop_data.dart';
import 'package:provider/provider.dart';
import 'package:latlong2/latlong.dart';

class Map extends StatefulWidget{
   Map({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MapState();
  }


}

class MapState extends State<Map>
{
  double lat=51.9029944;
  double lng=4.4600493;
  late LatLng desination;
  Future<LocationData?> getLocationData() async
  {

    Location location =  Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }
    //debugPrint("locationData--> ${_locationData.latitude}");

    return _locationData = await location.getLocation();

  }
  @override
  Widget build(BuildContext context) {



    return FutureBuilder(
      future: getLocationData(),
      builder: (context,AsyncSnapshot<LocationData?> snapshot) {
      return snapshot.hasData ? Scaffold(body: Stack(children: [
        FlutterMap(
          options: MapOptions(center: LatLng(snapshot.data!.latitude??1.1,snapshot.data!.longitude??2.2), zoom: 14.0),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
              attributionBuilder: (_) {
                return const Text("© OpenStreetMap contributors");
              },
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(snapshot.data!.latitude??1.1,snapshot.data!.longitude??2.2),
                  builder: (ctx) =>
                       Column(children: [
                         Icon(Icons.location_history,size: 60,),
                         Text("You",style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87,fontWeight: FontWeight.w900),)
                       ],),
                ),
                Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(Provider.of<StopData>(context, listen: false).getSelected().latitude,Provider.of<StopData>(context, listen: false).getSelected().longitude),
                  builder: (ctx) =>
                       Column(children: [
                         Icon(Icons.location_history,size: 60,),
                         Text("Dest",style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black87,fontWeight: FontWeight.w900),)
                       ],),
                ),
              ],
            )
          ],
        )
      ],)
        ,) : const Center(child:CircularProgressIndicator());
    },);

  }






}

