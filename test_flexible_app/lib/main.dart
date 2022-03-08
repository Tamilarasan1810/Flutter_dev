// import 'dart:html';
import 'dart:io';

//
import 'package:flutter/material.dart';

//import 'package: intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible widget"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.red,
                    child: Text("Hi da"),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      child: Text("Flex Tight"),
                    ),
                  ),
                  Container(
                    child: Text("Tamil"),
                    color: Colors.green,
                    height: 100,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.red,
                    child: Text("Hi da"),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      child: Text("Flex loose "),
                    ),
                  ),
                  Container(
                    child: Text("Tamil"),
                    color: Colors.green,
                    height: 100,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.red,
                    child: Text("Hi da"),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      child: Text("Flex Tight, flex: 2"),
                    ),
                  ),
                  Container(
                    child: Text("Tamil"),
                    color: Colors.green,
                    height: 100,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.red,
                    child: Text("Hi da"),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      child: Text("Flex Tight, flex:2"),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Text("flex Tight, flex:2"),
                      color: Colors.green,
                      height: 100,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.red,
                    child: Text("Hi da"),
                  ),
                  Expanded(
                    //fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      child: Text(
                          "Expanded: if you want a flex with thight then you can go for expanded"),
                    ),
                  ),
                  Container(
                    child: Text("Tamil"),
                    color: Colors.green,
                    height: 100,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
