// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, deprecated_member_use, sort_child_properties_last


import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final addTransaction;

  NewTransactions(this.addTransaction, {Key key}) : super(key: key);

  void submitData(){
    
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredTitle == '' || enteredAmount <= 0){
      return;
    }
    
    addTransaction(enteredTitle,enteredAmount);
    

  }

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
                      onSubmitted: (_) => submitData
                    ),
                    TextField(
                      controller: amountController,
                      decoration: InputDecoration(labelText: 'Amount'),
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      onSubmitted: (_) => submitData ,
                    ),
                    FlatButton(
                        onPressed: submitData,
                        child: Text('Add Transaction'),
                        textColor: Colors.purple)
                  ],
                ),
              ),
            );
  }
}