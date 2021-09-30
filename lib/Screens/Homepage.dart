import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:santhi_online_plants/Screens/RegisterPage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final CurrentUser = FirebaseAuth.instance.currentUser;
  //late GoogleSignInAccount _googleSignInAccount;
  GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 25),
        ),
        title: Text('hai.....'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,size: 25,color: Colors.white,),
          ),
          SizedBox(width: 25),
          IconButton(
            onPressed: ()async{
              await _googleSignIn.signOut().then((userData) {
                print('${userData}');

                if(userData == null){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                }
              }

              );
            },
            icon: Icon(Icons.logout,size: 25,color: Colors.white,),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        image: DecorationImage(
                          image: NetworkImage("https://freedesignfile.com/upload/2017/01/Stethoscope-with-black-background-Stock-Photo.jpg"),//https://cdn.pixabay.com/photo/2017/02/20/14/18/health-2082630_1280.jpg
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 2,
                      left: 10,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 90,
                      child: Text("My Health Summary",
                        style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 125,
                      left: 20,
                      child: Text("MultiSpeciality Hospital",
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 20,
                      child: Text("Near Providence Mall,\n Pondicherry",
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 250),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 600,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(blurRadius: 05,
                                      color: Colors.black ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15,top:2),
                                      height: 50,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        borderRadius: BorderRadius.all(Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(blurRadius: 02,color: Colors.black),
                                        ],
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.search,size: 25,color: Colors.white),
                                          hintText: "Search",
                                          hintStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Expanded(
                                    child: SizedBox(
                                      child: ListView.builder(
                                          itemCount: 2,
                                          itemBuilder: (context,index) {
                                            return Container(
                                              height: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .height / 5,
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(horizontal: 20,
                                                        vertical: 10),
                                                    child: Container(
                                                      height: 120,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius
                                                            .all(
                                                            Radius.circular(25)),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              blurRadius: 03,
                                                              color: Colors
                                                                  .black),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 8,
                                                    left: 18,
                                                    child: Container(
                                                      height: 122,
                                                      width: 110,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .all(
                                                            Radius.circular(10)),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/profile.jpg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 150,
                                                    top: 25,
                                                    child: Text("Date : ",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black),),
                                                  ),
                                                  Positioned(
                                                    left: 150,
                                                    top: 60,
                                                    child: Text("ID : ",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black),),
                                                  ),
                                                  Positioned(
                                                    bottom: 25,
                                                    left: 170,
                                                    child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                          Icons.download_sharp,
                                                          size: 25,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    bottom: 25,
                                                    left: 230,
                                                    child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                          Icons.remove_red_eye,
                                                          size: 25,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    bottom: 25,
                                                    left: 285,
                                                    child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                          Icons.share, size: 25,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}