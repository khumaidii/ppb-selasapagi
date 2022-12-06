import 'package:flutter/material.dart';
import 'package:latihan_project/pages/menuitemlist.dart';
import 'pages/myactionbutton.dart';
import 'pages/mybottombar.dart';
import 'pages/foodlistview.dart';
import 'pages/itemcard.dart';
import 'pages/selecttypesection.dart';
import 'pages/myappbar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: ProjectPage(),
    );
  }
}

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottomBar(),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 16.0,),
            MyAppBar(),
            SizedBox(height: 16.0,),
            foodListview(),
            SizedBox(height: 16.0,),
            SelectTypeSection(),
            SizedBox(height: 16.0,),
            MenuItemsList(),
          ],
        ),
      ),
    );
  }
}