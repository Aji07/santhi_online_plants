import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:santhi_online_plants/Screens/LoginPage.dart';

class OnBoardScreen extends StatelessWidget {
  List<PageViewModel>getpages(){
    return[

      PageViewModel(
        image: Image.asset("assets/images/onboard1.jpg"),
        title: 'Go Green and Gift Green',
        body: 'Surprise your loved one with Green Gift',
      ),

      PageViewModel(
          image: Image.asset("assets/images/onboard2.jpg"),
          title: 'Choose From Our Best Plans',
          body: 'Pick your desired plants from the app there\nare more then 200 plants',
      ),

      PageViewModel(
        image: Image.asset("assets/images/onboard3.jpg"),
        title: 'Quick Delivery at your \nDoorstep',
        body: 'Home Delivery and Online order for Every Person',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: getpages(),
          showNextButton: false,
          showSkipButton: true,
          skip: Text("Skip",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.blue),),
          done: Text("Done",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.green),),
          onDone: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          },
        ),
      ),
    );
  }
}
