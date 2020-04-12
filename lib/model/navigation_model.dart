
import 'package:flutter/material.dart';
import 'package:sphere_bottom_navigation_bar/sphere_bottom_navigation_bar.dart';


class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});

}

List<NavigationModel> navigationItems = [


  NavigationModel(title: "Services", icon: Icons.room_service ),
  NavigationModel(title: "Users", icon: Icons.people),
  NavigationModel(title: "Search", icon: Icons.search),
  NavigationModel(title: "Notifications", icon: Icons.notifications),
  NavigationModel(title: "Settings", icon: Icons.settings),
  NavigationModel(title: "Logout", icon: Icons.input,),

];

