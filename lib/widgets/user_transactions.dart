import 'package:expense_tracker/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/transaction.dart';
import 'new_transactions.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 99.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Toothbrush',
      amount: 10.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Rims',
      amount: 90.00,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransactions(String title, double amount) {
    final newTrns = Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());
        
      setState(() {
        _userTransactions.add(newTrns);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransactions(_addNewTransactions), TransactionList(_userTransactions)],
    );
  }
}
