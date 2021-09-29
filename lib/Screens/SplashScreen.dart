import 'dart:async';
import 'package:flutter/material.dart';
import 'package:santhi_online_plants/Screens/OnBoardScreen.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => OnBoardScreen()))
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/images/app logo.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
