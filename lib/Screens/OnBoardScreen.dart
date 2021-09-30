import 'package:flutter/material.dart';
import 'package:santhi_online_plants/Screens/LoginPage.dart';


class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: contents.length,
                itemBuilder:(_,i){
                return Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Container(
                        height: 400,
                        color: Colors.white,
                        child: Image.asset(contents[i].image),
                      ),
                      SizedBox(height: 20),
                      Text(contents[i].title,
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 20),
                      Text(contents[i].description,
                      style: TextStyle(fontSize: 18,color: Colors.black),),
                    ],
                  ),
                );
            }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:List.generate(
                contents.length,
                  (index)=>buildDot(context,index),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                icon: Icon(Icons.arrow_forward,color: Colors.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildDot(BuildContext context,index) {
    return Container(
      height: 8,
      width: 8,
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index? Colors.green : Colors.black54,
      ),
    );
  }
}

class UnboardingContent{
  String image;
  String title;
  String description;

  UnboardingContent({required this.image, required this.title, required this.description});
}

List<UnboardingContent> contents = [


  UnboardingContent(
    image: 'assets/images/onboard1.jpg',
    title: 'Go Green',
    description: 'Surprise your loved one with Green gift',
  ),

  UnboardingContent(
    image: 'assets/images/onboard2.jpg',
    title: 'Choose From Our Best Plants',
    description: 'Pick your desired plants from the app there \n'
        '                 are more than 200 plants',
  ),

  UnboardingContent(
    image: 'assets/images/onboard3.jpg',
    title: 'Quick Delivery at your DoorStep',
    description: 'Home Delivery and Online order for \n'
        '                 Every Person',
  ),
];