import 'dart:convert';

class FinanceCreditCardCategoryEntity {
  String? id;
  String? name;
  String? icon;

  FinanceCreditCardCategoryEntity({this.id, this.name, this.icon});

  FinanceCreditCardCategoryEntity copyWith(
    {
      String? category,
      String? icon,
    }) {
    return FinanceCreditCardCategoryEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
    };
  }

  factory FinanceCreditCardCategoryEntity.fromMap(Map<String, dynamic> map) {
    return FinanceCreditCardCategoryEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      icon: map['icon'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceCreditCardCategoryEntity.fromJson(String source) =>
      FinanceCreditCardCategoryEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceCreditCardCategoryEntity(category: $id, name: $name, icon: $icon)';
  }
}
