import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(SolarSystemApp());
}

class SolarSystemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'النظام الشمسي',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}