import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'transaction_event.dart';
import 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(TransactionLoading()) {
    on<LoadTransactions>((event, emit) async {
      try {
        final querySnapshot = await FirebaseFirestore.instance.collection('transactions').get();
        final transactions = querySnapshot.docs.map((doc) => doc.data()).toList();

        emit(TransactionLoaded(transactions: transactions));
      } catch (error) {
        emit(TransactionError(message: error.toString()));
      }
    });

    on<AddTransaction>((event, emit) async {
      if (state is TransactionLoaded) {
        try {
          final newTransaction = {
            'id': DateTime.now().toString(),
            'type': event.type,
            'amount': event.amount,
            'date': DateTime.now().toIso8601String(),
            'description': event.description,
          };

          await FirebaseFirestore.instance.collection('transactions').doc(newTransaction['id'] as String?).set(newTransaction);

          final updatedTransactions = List<Map<String, dynamic>>.from((state as TransactionLoaded).transactions)
            ..add(newTransaction);

          emit(TransactionLoaded(transactions: updatedTransactions));
        } catch (error) {
          emit(TransactionError(message: error.toString()));
        }
      }
    });
  }
}
