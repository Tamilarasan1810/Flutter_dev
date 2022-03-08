// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'models/transactions.dart';

import '../widgets/transactions_list.dart';

import 'widgets/new_transactions.dart';

//import 'package: intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App ',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        //fontFamily: 'Quicksand',
        fontFamily: 'OpenSans',

        // appBarTheme: AppBarTheme(
        //   textTheme: ThemeData.light().textTheme.copyWith(
        //         title: TextStyle(
        //           fontFamily: 'OpenSabs',
        //           fontSize: 20,
        //         ),
        //       ),
        // ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  final List<Transaction> _userTransactions = [
    // Transaction(
    //   id: '1',
    //   title: 'Soap',
    //   amount: 50,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: '2',
    //   title: 'Milk',
    //   amount: 10,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: '3',
    //   title: 'Pen',
    //   amount: 20,
    //   date: DateTime.now(),
    // ),
  ];

  void _addNewTransactions(String newtitle, int newamount) {
    final newTrans = Transaction(
      title: newtitle,
      amount: newamount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTrans);
    });
  }

  // ignore: non_constant_identifier_names
  void _startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransactions),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App '),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context),
          ),
        ],
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
                //color: Theme.of(context).primaryColor,
                child: Text("Chart"),
              ),
              elevation: 7,
            ),
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}
