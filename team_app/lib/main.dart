import 'package:flutter/material.dart';
import 'pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0XFF6D3FFF),
        // ignore: deprecated_member_use
        accentColor: Color(0XFF233C63),
        //fontFamily: 'Poppins',
      ),
      home: Welcome(),
    );
  }
}
