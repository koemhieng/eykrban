import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:embed/vdo.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Video List',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
        
      ),
      body: Lview(),
      
      bottomNavigationBar: CurvedNavigationBar(items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.video_collection, size: 30),
          Icon(Icons.person, size: 30),
        ],),
    ),
  ));
}