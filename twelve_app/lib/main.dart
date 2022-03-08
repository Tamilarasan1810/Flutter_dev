// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

import './transactions.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      title: 'Soap',
      amount: 50,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Milk',
      amount: 10,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Pen',
      amount: 20,
      date: DateTime.now(),
    ),
  ];

  // String? titleInput;
  // String? amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App '),
      ),
      body: Column(
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
          Card(
            elevation: 1,
            color: Colors.white60,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                    // onChanged: (value) {
                    //   titleInput = value;
                    // },
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount',
                    ),
                    // onChanged: (value) {
                    //   amountInput = value;
                    // },
                    controller: amountController,
                  ),
                  FlatButton(
                    child: Text("Add Transaction !"),
                    onPressed: () {
                      print(titleController.text);
                      print(amountController.text);
                    },
                    textColor: Colors.purple,
                    color: Colors.white60,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((trans) {
              return Card(
                elevation: 7,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                      child: Text(
                        "\u{20B9} " + trans.amount.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          trans.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          trans.date.toString(),
                          // DateFormat().format(trans.date),
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
