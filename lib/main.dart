import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:waad/GUI/home_user.dart';
import 'package:waad/GUI/home_worker.dart';
import 'package:waad/GUI/profile_worker.dart';
import 'package:waad/admin/Services/add_service.dart';
import 'package:waad/admin/dashboard_admin.dart';
import 'package:waad/admin/Services/services.dart';
import 'package:waad/home_test.dart';
import 'package:waad/phone_Authentication/loginpage.dart';
import 'package:waad/others.dart';
import 'package:waad/phone_Authentication/phone.dart';
import 'package:waad/users/sign_up.dart';
import 'GUI/profile_user.dart';
import 'admin/dashboard_test.dart';
import 'commons/collapsing_navigation_drawer_widget.dart';
import 'home.dart';
import 'users/login.dart';
import 'dart:async';


// void main(){
//    runApp(new MaterialApp(

//     debugShowCheckedModeBanner: false,
//     routes: <String, WidgetBuilder> {

//       '/signUp': (BuildContext context) => SignUp(),
//       '/home': (BuildContext context) => Home(),
//       '/login': (BuildContext context) => Login(),
//       '/others': (BuildContext context) => Others(),
//       '/homepage': (BuildContext context) => Home(),
//       '/services': (BuildContext context) => Service(),
//       '/addser': (BuildContext context) => AddSer(),

//       // '/side': (BuildContext context) => CollapsingNavigationDrawer(),
//     },
//     home: DashboardTest()
//   ));
// }
void main()=>runApp(MyApp());



class MyApp extends StatelessWidget {
  Widget _getScreenId() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          Provider.of<UserData>(context).currentUserId = snapshot.data.uid;
          //logged in 
          return ;//return Your homePage
        } else {
          // not logged in 
          return ;//return LoginPage
        }
      },
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserData(),
      child: MaterialApp(
        title: 'Title',
        home: _getScreenId(),
        routes: <String, WidgetBuilder> {

      '/signUp': (BuildContext context) => SignUp(),
      '/home': (BuildContext context) => Home(),
      '/login': (BuildContext context) => Login(),
      '/others': (BuildContext context) => Others(),
      '/homepage': (BuildContext context) => Home(),
      '/services': (BuildContext context) => Service(),
      '/addser': (BuildContext context) => AddSer(),

      // '/side': (BuildContext context) => CollapsingNavigationDrawer(),
    },
      ),
    );
  }
}


class UserData extends ChangeNotifier {
  String currentUserId;
}