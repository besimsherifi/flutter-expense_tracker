import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewTransactions extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final addTransaction;

  NewTransactions(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) {

                      },
                    ),
                    TextField(
                      controller: amountController,
                      decoration: InputDecoration(labelText: 'Amount'),
                      onChanged: (value) {

                      },
                    ),
                    FlatButton(
                        onPressed: () {
                         addTransaction(titleController.text, double.parse(amountController.text));
                        },
                        child: Text('Add Transaction'),
                        textColor: Colors.purple)
                  ],
                ),
              ),
            );
  }
}