import 'package:flutter/material.dart';
import 'home.dart';
import 'model.dart';

void main() {
  runApp(
    MyApp(),
  );
}

MonumentModel monumentModel = MonumentModel(feedback: '', name: '', profile: '', source: '', sourceUrl: '');

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage( ),
    );
  }
}