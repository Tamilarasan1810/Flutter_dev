import 'package:flutter/material.dart';
//import 'user_transactions.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction_function_pointer;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  // const NewTransaction({ Key? key }) : super(key: key);
  NewTransaction(this.addTransaction_function_pointer);
  @override
  Widget build(BuildContext context) {
    void submitData() {
      final enteredTitle = titleController.text;
      final enteredamount = int.parse(amountController.text);

      if (enteredTitle.isEmpty || enteredamount <= 0) {
        return;
      }

      addTransaction_function_pointer(
        enteredTitle,
        enteredamount,
      );

      Navigator.of(context).pop();
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
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                // onChanged: (value) {
                //   amountInput = value;
                // },
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) {
                  submitData();
                }),
            FlatButton(
              child: Text("Add Transaction !"),
              onPressed: () {
                // print(titleController.text);
                // print(amountController.text);
                // addTransaction_function_pointer(
                //   titleController.text,
                //   int.parse(amountController.text),
                // );
                submitData();
              },
              textColor: Colors.purple,
              color: Colors.white60,
            ),
          ],
        ),
      ),
    );
  }
}
