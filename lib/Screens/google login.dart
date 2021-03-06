import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLogin extends StatefulWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  bool _isLoggedIn = false;
  late GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,size: 25,color: Colors.black),
        title: Text("Santhi Online Plants",
        style: TextStyle(fontSize: 18,color: Colors.white),),
        actions: [
          IconButton(
            onPressed:(){

            },
            icon: Icon(Icons.search,
            size: 15,color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed:(){
              _googleSignIn.signOut().then((value) {
                setState(() {
                  _isLoggedIn = false;
                });
              }).catchError((e){});
            },
            icon: Icon(Icons.logout,
              size: 15,color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        child: _isLoggedIn
            ?Column(
          children: [
            Image.asset("assets/images/plants.jpg",
            fit: BoxFit.contain),
            Text(_userObj.displayName.toString(),
            style: TextStyle(fontSize: 18,color: Colors.black),),
            Text( _userObj.email,
            style: TextStyle(fontSize: 18,color: Colors.black),),
            TextButton(
              onPressed: (){
                _googleSignIn.signOut().then((value) {
                  setState(() {
                    _isLoggedIn = false;
                  });
                }).catchError((e){});
              },
              child: Text("Logout"),
            ),
          ],
        )
            :Center(
          child: ElevatedButton(
            onPressed: ()async{
             await _googleSignIn.signIn().then((userData) {
                setState(() {
                  _isLoggedIn = true;
                  _userObj = userData!;
                });
              }).catchError((e){
                print(e);
              });
            },
            child: Text("Login With Google"),
          ),
        ),
      )
    );
  }
}
