// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:thirteen_app/models/user_transactions.dart';
import 'package:thirteen_app/widgets/transactions_list.dart';

import 'models/new_transactions.dart';

//import 'package: intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App ',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // ignore: non_constant_identifier_names

  // String? titleInput;
  // String? amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App '),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Container(
                //width: 100,
                width: double.infinity,

                height: 50,
                color: Colors.green,
                child: Text("Chart"),
              ),
              elevation: 7,
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
