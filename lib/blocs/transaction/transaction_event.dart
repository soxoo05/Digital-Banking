import 'package:equatable/equatable.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object?> get props => [];
}

class LoadTransactions extends TransactionEvent {}

class AddTransaction extends TransactionEvent {
  final String type;
  final double amount;
  final String description;

  const AddTransaction({
    required this.type,
    required this.amount,
    required this.description,
  });

  @override
  List<Object?> get props => [type, amount, description];
}
