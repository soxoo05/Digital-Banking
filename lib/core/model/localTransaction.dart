/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class LocalTransaction extends Equatable {
  final String id;
  final String type;
  final double amount;
  final DateTime date;
  final String description;

  const LocalTransaction({
    required this.id,
    required this.type,
    required this.amount,
    required this.date,
    required this.description,
  });

  @override
  List<Object?> get props => [id, type, amount, date, description];

  // Convert LocalTransaction to Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'amount': amount,
      'date': date.toIso8601String(),
      'description': description,
    };
  }

  // Create LocalTransaction from Firestore document
  factory LocalTransaction.fromMap(Map<String, dynamic> map) {
    return LocalTransaction(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
      amount: map['amount']?.toDouble() ?? 0.0,
      date: DateTime.parse(map['date']),
      description: map['description'] ?? '',
    );
  }

  // Create LocalTransaction from Firestore DocumentSnapshot
  factory LocalTransaction.fromDocument(DocumentSnapshot doc) {
    return LocalTransaction(
      id: doc.id,
      type: doc['type'] ?? '',
      amount: doc['amount']?.toDouble() ?? 0.0,
      date: (doc['date'] as Timestamp).toDate(),
      description: doc['description'] ?? '',
    );
  }
}
*/
