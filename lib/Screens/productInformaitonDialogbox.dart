import 'package:flutter/material.dart';

class ProductDialog extends StatefulWidget {
  const ProductDialog({Key? key}) : super(key: key);

  @override
  _ProductDialogState createState() => _ProductDialogState();
}

class _ProductDialogState extends State<ProductDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                              child: Container(
                                height: 220,
                                width: 280,
                                margin: EdgeInsets.all(15),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(80),
                                    topRight: Radius.circular(80),
                                  ),
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment:Alignment.centerLeft,
                                      child: Text("Product Information",
                                      style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 45),
                                    Text("You can not buy this now. Would you like to replace cart item?",
                                    style: TextStyle(fontSize: 15,color: Colors.black,),),
                                    SizedBox(height: 35),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlatButton(
                                          onPressed: (){},
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                          color: Colors.green,
                                          child: Text("Cancel",
                                            style: TextStyle(fontSize: 15,color: Colors.white),),
                                        ),
                                        SizedBox(width: 15),
                                        FlatButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                          },
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                          color: Colors.green,
                                          child: Text("Done",
                                            style: TextStyle(fontSize: 15,color: Colors.white),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                  }
                );
              },
              child: Text("Add Product",
              style: TextStyle(fontSize: 15,color: Colors.white,),),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
