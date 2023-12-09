
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionModel {
  String? id;
  String? email;
  String? courseId;
  String? price;
  String? hash;
  String? paymentMethod;
  String? product;
  Timestamp? order_at;

  TransactionModel({
    this.id,
    this.email,
    this.courseId,
    this.price,
    this.hash,
    this.paymentMethod,
    this.product,
    this.order_at
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'],
      email: json['email'],
      price: json['price'],
      hash: json['hash'],
      courseId: json['courseId'],
      paymentMethod: json['paymentMethod'],
      product: json['product'],
      order_at: json['timestamp'] ?? Timestamp.now(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'price': price,
    'courseId': courseId,
    'hash': hash,
    'paymentMethod': paymentMethod,
    'product': product,
    'order_at': order_at
  };
}