import 'package:flutter/material.dart';
import '../models/transactions.dart';

class Chart extends StatelessWidget {
  //const Chart({ Key? key }) : super(key: key);
  late final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      return {'day': 'T', 'amount': 66};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
