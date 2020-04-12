import 'package:flutter/material.dart';
import 'package:sphere_bottom_navigation_bar/sphere_bottom_navigation_bar.dart';

import 'commons/collapsing_navigation_drawer_widget.dart';

class HomeTest extends StatefulWidget {
  @override
  _HomeTestState createState() => _HomeTestState();
}


class _HomeTestState extends State<HomeTest> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

       appBar: AppBar(
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


        bottomNavigationBar: SphereBottomNavigationBar(
        defaultSelectedItem: 0,
        sheetBackgroundColor: Color(0xFF0f2862),
       /* sheetRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),*/

        onItemPressed: (index) => setState(() {
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed('/login');
              break;
            case 1:
              Navigator.of(context).pushNamed('/login');
              break;
            case 2:
              Navigator.of(context).pushNamed('/login');
              break;
            case 3:
              Navigator.of(context).pushNamed('/login');
              break;
            case 4:
              Navigator.of(context).pushNamed('/login');
              break;
            default:
          }
        }),
        navigationItems: [


          BuildNavigationItem(
            //tooltip: 'waad',
            itemColor: Colors.white,
            icon: Icon(Icons.menu,color: Colors.white,),
            selectedItemColor: Color(0xFF1c77ac),
          ),

          BuildNavigationItem(
            tooltip: 'Home',
            itemColor: Color(0xFFFFD6B2),
            icon: Icon(Icons.star_half),
            selectedItemColor:  Color(0xFF1c77ac),   //color: Colors.white,
            // title: Text('الخدمات', style: TextStyle(color: Colors.white),),
          ),

          BuildNavigationItem(
            tooltip: 'Home',
            itemColor: Color(0xFFFFD6B2),
            icon: Icon(Icons.home),
            selectedItemColor:  Color(0xFF1c77ac),
            // title: Text('طلباتي', style: TextStyle(color: Colors.white),)
          ),

          BuildNavigationItem(
            tooltip: 'Home',
            itemColor: Color(0xFFFFD6B2),
            icon: Icon(Icons.assignment),
            selectedItemColor:  Color(0xFFc6eefa),
            // title: Text('الإعلانات', style: TextStyle(color: Colors.white),)
          ),
          BuildNavigationItem(
            tooltip: 'Home',
            itemColor: Colors.white,
            icon: Icon(
              Icons.room_service,
              color: Colors.white,

            ),
            selectedItemColor: Color(0xFFc6eefa),
            // title: Text('خدمة مقابل خدمة', style: TextStyle(color: Colors.white),)
          ),
        ],

        //backgroundColor:  Color(0xFF0f2862),
        // type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.white,
      ),
    );
  }
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
