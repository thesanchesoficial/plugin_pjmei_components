import 'dart:convert';

class ProductOptionItemEntity {
  String id;
  String name;
  String? description;
  num amount;
  bool visibility;
  ProductOptionItemEntity({
    required this.id,
    required this.name,
    this.description,
    required this.amount,
    required this.visibility,
  });

  ProductOptionItemEntity copyWith({
    String? id,
    String? name,
    String? description,
    num? amount,
    bool? visibility,
  }) {
    return ProductOptionItemEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      visibility: visibility ?? this.visibility,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'amount': amount,
      'visibility': visibility,
    };
  }

  factory ProductOptionItemEntity.fromMap(Map<String, dynamic> map) {
    return ProductOptionItemEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'],
      amount: map['amount'] ?? 0,
      visibility: map['visibility'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductOptionItemEntity.fromJson(String source) => ProductOptionItemEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductOptionItemEntity(id: $id, name: $name, description: $description, amount: $amount, visibility: $visibility)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductOptionItemEntity &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.amount == amount &&
      other.visibility == visibility;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      amount.hashCode ^
      visibility.hashCode;
  }
}
