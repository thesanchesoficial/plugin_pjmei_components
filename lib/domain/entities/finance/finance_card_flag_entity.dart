import 'dart:convert';

class FinanceCardFlagEntity {

  FinanceCardFlagEntity(
  {
    this.id,
    this.name,
    this.icon,
  });

  factory FinanceCardFlagEntity.fromMap(Map<String, dynamic> map) {
    return FinanceCardFlagEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      icon: map['icon'] ?? '',
    );
  }

  factory FinanceCardFlagEntity.fromJson(String source) =>
      FinanceCardFlagEntity.fromMap(json.decode(source));
  String? id;
  String? name;
  String? icon;

  FinanceCardFlagEntity copyWith({
    String? id,
    String? name,
    String? icon,
  }) {
    return FinanceCardFlagEntity(
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

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FinanceCardFlagEntity(id: $id, name: $name, icon: $icon)';
  }
}
