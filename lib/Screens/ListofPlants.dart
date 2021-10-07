import 'package:flutter/material.dart';

class ListofPlants extends StatefulWidget {
  const ListofPlants({Key? key}) : super(key: key);

  @override
  _ListofPlantsState createState() => _ListofPlantsState();
}

class _ListofPlantsState extends State<ListofPlants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder:(context,index){
                  return Column(
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
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
