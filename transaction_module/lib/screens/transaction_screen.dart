  import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  final String accountId;
  final double balance;

  const TransactionScreen({
    super.key,
    required this.accountId,
    required this.balance,
  });

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final transactions = [
    {'id': 'TXN001', 'amount': 100.0, 'date': '2025-06-01'},
    {'id': 'TXN002', 'amount': -50.0, 'date': '2025-06-02'},
    {'id': 'TXN003', 'amount': 200.0, 'date': '2025-06-03'},
  ];

  void _selectTransaction(String transactionId) {
    Navigator.pop(context, transactionId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaction History')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account ID: ${widget.accountId}', style: const TextStyle(fontSize: 18)),
            Text('Balance: \$${widget.balance.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            const Text('Transactions:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final transaction = transactions[index];
                  return ListTile(
                    title: Text('Transaction ID: ${transaction['id']}'),
                    subtitle: Text('Amount: \$${transaction['amount']} | Date: ${transaction['date']}'),
                    onTap: () => _selectTransaction(transaction['id']! as String),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}