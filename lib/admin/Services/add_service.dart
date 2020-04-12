import 'package:flutter/material.dart';
import 'dart:async';

import 'package:waad/admin/Services/services.dart';

class AddSer extends StatefulWidget {
  @override
  _AddSerState createState() => _AddSerState();
}

class _AddSerState extends State<AddSer> {


  @override
  Widget build(BuildContext context) {
   // Service();
    return Scaffold(
      body: Center(
       child: Stack(
         children: <Widget>[
           Service(),
          Center(

            heightFactor: 30.0,
            child: Container(
              height: 500.0,
              width: 320.0,
              padding: EdgeInsets.only(top: 100.0),
              child: Container(
                alignment: Alignment.center,
                height: 400.0,
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight:  Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)
                    )

                ),
              ),
            ),
          )


         ],
       ),
      ),



    );


  }
}



