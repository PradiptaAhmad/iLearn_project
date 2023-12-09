
class TransactionModel {
  String? id;
  String? email;
  String? price;
  String? hash;
  String? paymentMethod;
  String? product;
  DateTime? order_at;

  TransactionModel({
    this.id,
    this.email,
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
      paymentMethod: json['paymentMethod'],
      product: json['product'],
      order_at: DateTime.parse(json['order_at'])
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'price': price,
    'hash': hash,
    'paymentMethod': paymentMethod,
    'product': product,
    'order_at': order_at
  };
}