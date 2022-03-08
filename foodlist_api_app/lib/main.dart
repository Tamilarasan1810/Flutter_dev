import 'package:flutter/material.dart';
import './views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      // theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: HomePage(),
    );
  }
}
