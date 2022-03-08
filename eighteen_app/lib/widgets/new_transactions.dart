import 'package:flutter/material.dart';
//import 'user_transactions.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  late final Function addTx;

  NewTransaction(this.addTx);
//  const NewTransaction({Key? key}) : super(key: key);
  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  //final Function addTransaction_function_pointer;
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  // const NewTransaction({ Key? key }) : super(key: key);
// _NewTransactionState(this.addTransaction_function_pointer);
  @override
  Widget build(BuildContext context) {
    void _submitData() {
      if (_amountController.text.isEmpty) {
        return;
      }
      final enteredTitle = _titleController.text;
      final enteredamount = int.parse(_amountController.text);

      if (enteredTitle.isEmpty || enteredamount <= 0 || _selectedDate == null) {
        return;
      }

      // addTransaction_function_pointer(
      widget.addTx(
        enteredTitle,
        enteredamount,
        _selectedDate,
      );

      Navigator.of(context).pop();
    }

    void _presentDatePicker() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2002),
        lastDate: DateTime.now(),
      ).then((pickedDate) {
        if (pickedDate == null) {
          return;
        }
        setState(() {
          _selectedDate = pickedDate;
        });
      });
    }

    void _todayDatePicker() {
      setState(() {
        _selectedDate = DateTime.now();
      });
    }

    return Card(
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
              controller: _titleController,
              onSubmitted: (_) => _submitData(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              // onChanged: (value) {
              //   amountInput = value;
              // },
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) {
                _submitData();
              },
            ),
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      _selectedDate == null
                          ? "No Date Choosen!"
                          : '${DateFormat.yMMMd().format(_selectedDate!)}',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        FlatButton(
                          //textColor: Theme.of(context).primaryColor,
                          textColor: Colors.deepPurple,
                          child: Text("Today's Date",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          onPressed: _todayDatePicker,
                        ),
                        FlatButton(
                          textColor: Theme.of(context).primaryColor,
                          child: Text(
                            "Choose Date ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: _presentDatePicker,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text("Add Transaction !"),
              color: Colors.purple,
              onPressed: () {
                // print(titleController.text);
                // print(amountController.text);
                // addTransaction_function_pointer(
                //   titleController.text,
                //   int.parse(amountController.text),
                // );
                _submitData();
              },
              textColor: Colors.white,
              // color: Colors.white60,
            ),
          ],
        ),
      ),
    );
  }
}
