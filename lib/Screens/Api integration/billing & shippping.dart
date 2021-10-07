import 'package:flutter/material.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,

            child: FlatButton(
              color: Colors.green,
              onPressed: (){

              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Text("Place Order",
              style: TextStyle(fontSize: 15,color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
