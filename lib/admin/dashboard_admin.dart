import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:waad/commons/collapsing_navigation_drawer_widget.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Material MyItems(IconData icon, String heading , int color){
    return Material(
      color: Colors.white,
      elevation: 10.0,
      shadowColor: Color(0xFF194351),
      borderRadius: BorderRadius.circular(20.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(heading,
                      style: TextStyle(
                          color: Color(color),
                          fontSize: 20.0
                      ),
                    ),
                  ),

                  Material(
                      color: Color(color),
                      borderRadius: BorderRadius.circular(20.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(icon,
                            color: Colors.white,
                            size: 30.0
                        ),
                      )
                  )

                ],
              )
            ],
          ),
        ),
      ),

    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
           ),
        centerTitle: true,
        backgroundColor: Color(0xFF0f2862),

        ),
      body: Container(

         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment:CrossAxisAlignment.start,

           children: <Widget>[


             Row(
               children: <Widget>[
                 CollapsingNavigationDrawer(),
               ],
             )


           ],

         ),







      ),



      /*body: ListView(


        children: <Widget>[
         // _top(),
          SizedBox(height: 50.0,),
         Container(

           height: MediaQuery.of(context).size.height,
          /* child: GridView(
             padding: EdgeInsets.only(top: 20.0),
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





             ],
           ),*/
         )


            ],
          )*/





    );
  }

  _gridItem(IconData icon, String heading){
    return Column(

      children: <Widget>[
        CircleAvatar(
          radius: 40.0,
          backgroundColor:  Color(0xFF0f2862),
          child: Icon(icon,
              color: Colors.white,
              size: 30.0
          ),
        ),
        SizedBox(height: 10.0,),
        Text(heading,
        style: TextStyle(fontSize: 20.0),)

     ]
    );




  }

  _top(){
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF0f2862),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight:  Radius.circular(30.0),
        )
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('images/logo1.png'),
                      ),
                      SizedBox(width: 10.0),
                      Text('Waad Ibrahim', style: TextStyle(color: Colors.white, fontSize: 20.0))
                    ],
                  ),

                ],
              ),
              IconButton(
                icon: Icon(Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: null,
              )
            ],
          ),
          SizedBox(height: 30.0,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Serarch',
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.filter_list),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.transparent)
              )

            ),
          )


        ],
      ),


    );
  }
}
