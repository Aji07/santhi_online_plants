import 'package:flutter/material.dart';

class CartDialog extends StatefulWidget {
  const CartDialog({Key? key}) : super(key: key);

  @override
  _CartDialogState createState() => _CartDialogState();
}

class _CartDialogState extends State<CartDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              color: Colors.green,
              onPressed: (){
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context){
                      return Material(
                        type: MaterialType.transparency,
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Expanded(
                            child: Container(
                              height: 220,
                              width: 280,
                              margin: EdgeInsets.all(15),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                ),
                                border: Border.all(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 35),
                                  Text("CART INFORMATION",
                                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 20),
                                  Text("Total cost of Products in",
                                    style: TextStyle(fontSize: 15,color: Colors.black),),
                                  Text("cart must be Rs.249 or more",
                                    style: TextStyle(fontSize: 15,color: Colors.black),),
                                  SizedBox(height: 20),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: FlatButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      color: Colors.green,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                      child: Text("Done",
                                        style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                );
              },
              child: Text("Add to Cart",
                style: TextStyle(fontSize: 15,color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}