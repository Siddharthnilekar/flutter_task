import 'package:flutter/material.dart';
import 'screens/transaction_screen.dart';

void main() {
  runApp(const TransactionModule());
}

class TransactionModule extends StatelessWidget {
  const TransactionModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction Module',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const TransactionScreen(accountId: 'ACC123', balance: 5000.0),
    );
  }
}