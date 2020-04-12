import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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


void main(){
   runApp(new MaterialApp(

    debugShowCheckedModeBanner: false,
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
    home: DashboardTest()
  ));
}