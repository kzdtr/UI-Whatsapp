import 'package:flutter/material.dart';
import 'package:whatsapp/Home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        theme: ThemeData(
          primaryColor: Color(0xFF075e54),
          accentColor: Color(0xFF075e54),
          fontFamily: "OpenSans",
        ));
  }
}
