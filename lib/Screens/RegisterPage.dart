import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:santhi_online_plants/Screens/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool _isLoggedIn = false;
  late GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<FormState>();

  void validateandsave(){
    final form = _formkey.currentState;
    if(form!.validate()){
      print("form is valid");
    }
    else{
      print("Form is Invalid");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: SafeArea(
          child: Form(
            key: _formkey,
            child: Scaffold(
              key: _scaffoldkey,
              body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          onPressed: (){},
                          child: Text("Skip",style: TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        height: 170,
                        width: double.infinity,
                        child: Lottie.asset("assets/images/plant_hand.json"),
                      ),
                      SizedBox(height: 15),
                      Text("Sign Up",
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 25),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: usernamecontroller,
                        onChanged: (String value){},
                        validator: (value){
                          if(value!.length == 0)
                            return "Please Enter a Username";
                          else
                            return null;
                        },
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          hintText: "Username",
                          fillColor: Colors.green,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller:emailcontroller,
                        onChanged: (String value){},
                        validator: (value){
                          if(value!.length == 0)
                            return "Please Enter a Email";
                          else
                            return null;
                        },
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          labelText: "E mail",
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          hintText: "Email",
                          fillColor: Colors.green,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              {
                                _googleSignIn.signIn().then((userData) {
                                  setState(() {
                                    _isLoggedIn = true;
                                    _userObj = userData!;
                                  });
                                }).catchError((e){
                                  print(e);
                                });
                              }
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/G.png"),
                                  fit: BoxFit.contain,
                                ),
                                border: Border.all(
                                  width: 2.0,
                                  color: Colors.black,
                                ),
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(blurRadius: 01,color: Colors.black)]
                              ),
                            ),
                          ),
                          SizedBox(width: 25),
                          new GestureDetector(
                            onTap: (){ },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/F.png"),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2.0,
                                    color: Colors.black,
                                  ),
                                  boxShadow: [BoxShadow(blurRadius: 01,color: Colors.black)]
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            validateandsave();
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: Text("Sign In",
                            style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                          style: TextStyle(fontSize: 15,color: Colors.black),),

                          FlatButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                            },
                            child: Text("Sign In",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green),),
                          ),
                        ],
                      ),
                    ],
                  ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
