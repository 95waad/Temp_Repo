import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sphere_bottom_navigation_bar/sphere_bottom_navigation_bar.dart';
import 'package:waad/others.dart';

import 'commons/collapsing_list_tile_widget.dart';
import 'commons/collapsing_navigation_drawer_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //drawer: Others(),
        //drawer: CollapsingNavigationDrawer(),
      body: ListView(
        children: <Widget>[
          //CollapsingNavigationDrawer(),
          _top(),
          SizedBox(height: 30.0,),

             Text('اختار الخدمة اللي تحتاجها',
               textAlign: TextAlign.center,
               style: TextStyle(fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0f2862)),),

          SizedBox(height: 50.0,),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 50.0,right: 50.0),
            child: Container(
              height:300.0,
              decoration: BoxDecoration(
                color: Colors.white70,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight:  Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  )

              ),


              child: GridView(
                padding: EdgeInsets.only(top: 10.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 3/2,

                ),

                children: <Widget>[

                  _gridItem(Icons.notifications, "الإشعارات"),
                  _gridItem(Icons.people, "المستخدمين"),
                  _gridItem(Icons.view_carousel, "الإعلانات"),
                  _gridItem(Icons.room_service, "المهن"),
                  _gridItem(Icons.people, "خدمة مقابل خدمة"),
                  _gridItem(Icons.people, "Users"),
                  _gridItem(Icons.people, "Users"),
                  _gridItem(Icons.people, "Users"),
                  _gridItem(Icons.people, "Users"),
                  _gridItem(Icons.people, "Users"),
                ],
              ),
            ),
          )

        ],
      ),

      bottomNavigationBar: Container(
        height: 70.0,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(75.0),
            topLeft: Radius.circular(75.0),
            bottomLeft: Radius.circular(75.0),
            bottomRight: Radius.circular(75.0),

          ),
          color:  Color(0xFF000662),
        ),
        padding: EdgeInsets.only(left: 40.0, right: 40.0),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add_circle,
                  size: 40.0,),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.notifications,size: 40.0,),
              ),
              IconButton(
                icon: Icon(Icons.person,size: 40.0,),
              ),
              IconButton(
                icon: Icon(Icons.home,size: 40.0,
                  color: Colors.white,),
                onPressed: (){
                  Navigator.of(context).pushNamed('/homepage');
                },
              ),
              IconButton(
                icon: Icon(Icons.home,size: 40.0,
                  color: Colors.white),
                onPressed: (){

                  //Navigator.of(context).pushNamed('/homepage');
                },
              ),
            ],
          ),
        ),
        ),
    );
  }


}
_top(){
  return Container(
    height: 150.0,
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
        SizedBox(height: 30.0,),
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

_gridItem(IconData icon, String heading){
  return Column(

      children: <Widget>[
        CircleAvatar(
          radius: 25.0,
          backgroundColor:  Color(0xFF0f2862),
          child: Icon(icon,
              color: Colors.white,
              size: 20.0
          ),
        ),
        SizedBox(height: 10.0,),
        Text(heading,
          style: TextStyle(fontSize: 20.0),)

      ]
  );




}

