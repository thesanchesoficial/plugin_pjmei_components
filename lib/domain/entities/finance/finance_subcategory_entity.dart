import 'dart:convert';

class FinanceSubcategoryEntity{

  FinanceSubcategoryEntity({
    this.id,
    this.name
  });

  factory FinanceSubcategoryEntity.fromMap(Map<String, dynamic> map) {
    return FinanceSubcategoryEntity(
        id: map['id'] ?? '',
        name: map['name'] ?? ''
    );
  }

  factory FinanceSubcategoryEntity.fromJson(String source) =>
      FinanceSubcategoryEntity.fromMap(json.decode(source));
  String? id;
  String? name;

  FinanceSubcategoryEntity copyWith({
    String? id,
    String? name
  }) {
    return FinanceSubcategoryEntity(
        id: id ?? this.id,
        name: name ?? this.name
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FinanceSubcategoryEntity(id: $id, name: $name)';
  }

}