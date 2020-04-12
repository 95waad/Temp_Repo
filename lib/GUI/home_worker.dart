import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_worker extends StatefulWidget {
  @override
  _Home_workerState createState() => _Home_workerState();
}

class _Home_workerState extends State<Home_worker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFF0f2862),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings,
                color: Colors.blueAccent,
                size: 30.0,
             ),
              onPressed: null)
        ],
      ),
      body: Stack(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Color(0xFF0f2862),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 350.0,
            left: 25.0,
            top: MediaQuery.of(context).size.height /9,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(75.0)
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 12.0, color: Colors.black)
                    ]
                ),
                ),
                SizedBox(height: 40.0,),
                Text('اسم المستخدم',
                style: TextStyle(fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0f2862)),
                ),
                SizedBox(height: 40.0,),
                Container(
                  child:Column(
                    children:[
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on, color:  Color(0xFF0f2862), size: 30.0,),
                          SizedBox(width: 10.0,),
                          Text('المدينة', style: TextStyle(fontSize: 20.0),),
                          SizedBox(width: 50.0,),
                          Icon(Icons.build, color:  Color(0xFF0f2862), size: 30.0,),
                          SizedBox(width: 10.0,),
                          Text('المهنة', style: TextStyle(fontSize: 20.0),),
                        ],
                      ),
                      SizedBox(height: 30.0,),
                      Text('التقييمات', style: TextStyle( color: Color(0xFF0f2862),fontSize: 30.0, fontWeight: FontWeight.bold),),
                          SizedBox(height: 20.0,),
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.star_border, color:  Color(0xFF0f2862), size: 20.0,),
                                SizedBox(width: 10.0,),
                                Icon(Icons.star_border, color:  Color(0xFF0f2862), size: 20.0,),
                                SizedBox(width: 10.0,),
                                Icon(Icons.star_border, color:  Color(0xFF0f2862), size: 20.0,),
                                SizedBox(width: 10.0,),
                                Icon(Icons.star_border, color:  Color(0xFF0f2862), size: 20.0,),
                                SizedBox(width: 10.0,),
                                Icon(Icons.star_border, color:  Color(0xFF0f2862), size: 20.0,),

                              ],
                            ),
                          )
                        ],





                    ),
                  ),
              ],
            ),
          )
        ],
      ),

    );
  }
}

class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 2.5);
    path.lineTo(size.width + 100 , 0.0);
    path.close();
    return path;


  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }


}