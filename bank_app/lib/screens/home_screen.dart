import 'package:flutter/material.dart';
import 'package:transaction_module/screens/transaction_screen.dart';
import '../models/account.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final account = Account(id: 'ACC123', balance: 5000.0);
  String? selectedTransactionId;

  Future<void> _openTransactionModule() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TransactionScreen(
          accountId: account.id,
          balance: account.balance,
        ),
      ),
    );
    if (result != null) {
      setState(() {
        selectedTransactionId = result as String;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected Transaction: $selectedTransactionId')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bank App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account ID: ${account.id}', style: const TextStyle(fontSize: 18)),
            Text('Balance: \$${account.balance.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openTransactionModule,
              child: const Text('View Transactions'),
            ),
            if (selectedTransactionId != null)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Selected Transaction: $selectedTransactionId',
                    style: const TextStyle(fontSize: 16, color: Colors.green)),
              ),
          ],
        ),
      ),
    );
  }
}