import 'package:flutter/material.dart';
import '../models/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  late final List<Transaction> transactions;
  late Function deleteTransaction;
  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.7,
      //width: 380,
      child: transactions.isEmpty
          ? LayoutBuilder(builder: (context, constrains) {
              return Column(
                children: <Widget>[
                  SizedBox(
                    height: constrains.maxHeight * 0.05,
                  ),
                  const Text(
                    "Add New Transactions !!!",
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      //color: Colors.deepOrange,
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: constrains.maxHeight * 0.06,
                  ),
                  Container(
                    height: constrains.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/Nothing.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            })
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: Colors.green.shade400,
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: FittedBox(
                          child: Text("\u{20B9}${transactions[index].amount}"),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
                    ),
                    subtitle: Text(
                        DateFormat.yMMMd().format(transactions[index].date)),
                    trailing: MediaQuery.of(context).size.width > 400
                        ? FlatButton.icon(
                            icon: Icon(Icons.delete),
                            textColor: Colors.red,
                            label: Text(
                              "DELETE",
                              style: TextStyle(
                                  //color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () =>
                                deleteTransaction(transactions[index].id),
                          )
                        : IconButton(
                            icon: Icon(Icons.delete),
                            color: Colors.red,
                            onPressed: () =>
                                deleteTransaction(transactions[index].id),
                          ),
                  ),
                );
              },
              itemCount: transactions.length,
              //  children: transactions.map((trans) {
              //}).toList(),
            ),
    );
  }
}
