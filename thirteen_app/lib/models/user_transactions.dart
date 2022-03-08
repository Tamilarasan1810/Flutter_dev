import 'package:flutter/material.dart';
import 'package:thirteen_app/models/transactions.dart';
import 'package:thirteen_app/widgets/transactions_list.dart';

import 'new_transactions.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransactions),
        TransactionList(_userTransactions),
      ],
    );
  }
}
