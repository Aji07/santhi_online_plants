import 'package:flutter/material.dart';

class PlantsInfo extends StatefulWidget {
  const PlantsInfo({Key? key}) : super(key: key);

  @override
  _PlantsInfoState createState() => _PlantsInfoState();
}

class _PlantsInfoState extends State<PlantsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: SafeArea(
          child:ListView (
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 15),
              Container(
                height:200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/coco.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text("Soiless Organic Ready Made Pot Mixing - \nSanthi Online Plants",
              style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 15),
              Text("Santhi_Clonal_nursery #sakthi #santhi_online_plants"
                  "\n#cocopeat Santhi Online Plants offering quality saplings/"
                  "\nplants online for a low price.  We serve all over  ...",
              style: TextStyle(fontSize: 15,color: Colors.black54,),),
              SizedBox(height: 15),
              Container(
                height:200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/plants.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text("Santhi Online Plants - Buy plants online | "
                  "\nSanthi nursery plants | Santhi clonal nursery"
                  "\n| Sakthi",
                style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

              SizedBox(height: 15),
              Text("Santhi_online #santhi_online_plants #plants"
                  "\nSanthi nursery Plants offering quality saplings/plants"
                  "\n online for a low price. we Serve all over India with free...",
                style: TextStyle(fontSize: 15,color: Colors.black54,),),
              SizedBox(height: 15),
              Container(
                height:200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/img.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
