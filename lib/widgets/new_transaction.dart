import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function _addNewTx;

  NewTransaction(this._addNewTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            FlatButton(
              onPressed: () {
                _addNewTx(
                  titleController.text,
                  int.parse(amountController.text),
                );
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}