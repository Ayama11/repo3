// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../medicen/medicen_bygat_model.dart';

class CartItemModel {
  final GategoryMedicenModel item;
  final int qty;
  CartItemModel({
    required this.item,
    required this.qty,
  });

  CartItemModel copyWith({
    GategoryMedicenModel? item,
    int? qty,
  }) {
    return CartItemModel(
      item: item ?? this.item,
      qty: qty ?? this.qty,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'item': item.toMap(),
      'qty': qty,
    };
  }

  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
      item: GategoryMedicenModel.fromMap(map['item'] as Map<String, dynamic>),
      qty: map['qty'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItemModel.fromJson(String source) =>
      CartItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CartItemModel(item: $item, qty: $qty)';

  @override
  bool operator ==(covariant CartItemModel other) {
    if (identical(this, other)) return true;

    return other.item == item && other.qty == qty;
  }

  @override
  int get hashCode => item.hashCode ^ qty.hashCode;
}
