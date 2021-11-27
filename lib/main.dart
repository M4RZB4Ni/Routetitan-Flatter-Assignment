import 'package:flutter/material.dart';
import 'package:routetitan/views/hq.dart';

void main() {



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routetitan Flatter Assignment',

      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme:const TextTheme(
          headline1: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),
          bodyText1: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),
          subtitle1:  TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 13),
        ) ,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/Hq",
      routes: {
        "/Hq":(context) => const Directionality(textDirection: TextDirection.ltr, child: Hq()),

      },
    );
  }
}
