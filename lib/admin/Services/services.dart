import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waad/admin/Services/add_service.dart';
import 'package:waad/commons/collapsing_navigation_drawer_widget.dart';

class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {

 void addSer(){
   setState(() {
    Navigator.of(context).pushNamed('/addser');
   });

  }

  Future<Null> _addservice() async{
    return showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Add Service'),
            content: SingleChildScrollView(
              child: ListBody(
              children: <Widget>[

                    Text('waad'),


              ],
            ),

           ),
              actions: <Widget>[
          RaisedButton(
          child: Text('ok'),
          onPressed: (){
          Navigator.of(context).pop();
          },
          )
          ],
          );

        }



    );


  }
  @override
  Widget build(BuildContext context) {
    AddSer();
    return Scaffold(
    /*  appBar: AppBar(
        title: Text('Services',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color(0xFF0f2862),
      ),*/

      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              _top(),

              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.of(context).pop();
                    }
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.more_horiz),
                    color: Colors.white ,
                    onPressed: (){
                      // Navigator.of(context).push(draw());
                    }
                ),
              ),
            /*  Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[

                  ],
                ),
              ),*/


            ],
          )
            ],
          ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF000662) ,
          child: Icon(Icons.add,
            size: 30.0,
            color: Colors.white,),
        onPressed: addSer,
          /*() {
            Navigator.of(context).pushNamed('/addser');}*/
    )

    );
  }
}

_top(){
  return Container(
    height: 180.0,
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
        color:  Color(0xFF000662),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.0),
          bottomRight:  Radius.circular(100),
        )
    ),
    child: Column(
      children: <Widget>[
        SizedBox(height: 40.0,),
        TextField(
          decoration: InputDecoration(
              hintText: 'Serarch',
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.transparent)
              )

          ),
        )


      ],
    ),


  );
}


