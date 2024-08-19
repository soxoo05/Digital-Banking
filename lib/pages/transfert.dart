import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/transaction/transaction_bloc.dart';
import '../blocs/transaction/transaction_event.dart';
import '../blocs/transaction/transaction_state.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transactions')),
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state is TransactionLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TransactionLoaded) {
            return ListView.builder(
              itemCount: state.transactions.length,
              itemBuilder: (context, index) {
                final transaction = state.transactions[index];
                return ListTile(
                  title: Text(transaction['description']),
                  subtitle: Text(transaction['date'].toString()),
                  trailing: Text('\$${transaction['amount'].toString()}'),
                );
              },
            );
          } else if (state is TransactionError) {
            return Center(child: Text('Erreur : ${state.message}'));
          } else {
            return const Center(child: Text('Aucune transaction disponible.'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TransactionBloc>().add(const AddTransaction(
            type: 'paiement',
            amount: 100.0,
            description: 'Paiement test',
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
