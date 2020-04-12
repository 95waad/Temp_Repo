import 'package:flutter/material.dart';

class DashboardTest extends StatefulWidget {
  @override
  _DashboardTestState createState() => _DashboardTestState();
}

class _DashboardTestState extends State<DashboardTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF000662),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              InkWell(
                child: Container(
                  //color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('الخدمات',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                        ),
                      ) ,
                      SizedBox(width: 20.0,),
                      Icon(Icons.room_service)
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed('/services');
                },
              ),
              
              
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('المستخدمين',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ) ,
                  SizedBox(width: 20.0,),
                  Icon(Icons.people)
                ],
              ),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('الإشعارات',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ) ,
                  SizedBox(width: 20.0,),
                  Icon(Icons.notifications)
                ],
              ),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('تسجيل الخروج',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ) ,
                  SizedBox(width: 20.0,),
                  Icon(Icons.input)
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
