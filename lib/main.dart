import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:santhi_online_plants/Screens/Api%20integration/billing%20&%20shippping.dart';
import 'package:santhi_online_plants/Screens/ListofPlants.dart';
import 'package:santhi_online_plants/Screens/PLantsInfo%20Page.dart';
import 'package:santhi_online_plants/Screens/google login.dart';
import 'package:santhi_online_plants/Screens/OnBoardScreen.dart';
import 'package:santhi_online_plants/Screens/RegisterPage.dart';
import 'package:santhi_online_plants/Screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:santhi_online_plants/Screens/productInformaitonDialogbox.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(PlantsApp());
}

class PlantsApp extends StatelessWidget {
  const PlantsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shanti Online Plants",
      home:Shipping(),
    );
  }
}
