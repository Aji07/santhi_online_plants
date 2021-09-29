import 'package:flutter/material.dart';
import 'package:santhi_online_plants/Screens/Homepage.dart';
import 'package:santhi_online_plants/Screens/SplashScreen.dart';


void main(){
  runApp(PlantsApp());
}

class PlantsApp extends StatelessWidget {
  const PlantsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shanti Online Plants",
      home:Splash(),
    );
  }
}
