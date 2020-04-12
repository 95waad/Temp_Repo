import 'package:flutter/material.dart';
import 'package:sphere_bottom_navigation_bar/sphere_bottom_navigation_bar.dart';

class Home_user extends StatefulWidget {
  @override
  _Home_userState createState() => _Home_userState();
}

class _Home_userState extends State<Home_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

          SizedBox(height: 100.0,),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
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
                padding: EdgeInsets.only(top: 40.0),
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

      bottomNavigationBar: SphereBottomNavigationBar(
        defaultSelectedItem: 0,
        sheetBackgroundColor: Color(0xFF0f2862),
        sheetRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),

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
            tooltip: 'waad',
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
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('images/logo1.png') ,
                )
              ],
            )
          ],
        ),
        SizedBox(height: 20.0,),
        TextField(
          decoration: InputDecoration(
              hintText: 'Serarch',
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.filter_list),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
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
