import 'dart:convert';

class FinanceBankInstitutionEntity {

  FinanceBankInstitutionEntity({
    required this.id,
    required this.name,
    required this.code,
    required this.icon,
  });

  factory FinanceBankInstitutionEntity.fromMap(Map<String, dynamic> map) {
    return FinanceBankInstitutionEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      code: int.parse((map['code'] ?? 0).toString()),
      icon: map['icon'] ?? '',
    );
  }

  factory FinanceBankInstitutionEntity.fromJson(String source) => FinanceBankInstitutionEntity.fromMap(json.decode(source));
  String id;
  String name;
  int code;
  String icon;

  FinanceBankInstitutionEntity copyWith({
    String? id,
    String? name,
    int? code,
    String? icon,
  }) {
    return FinanceBankInstitutionEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'icon': icon,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FinanceBankInstitutionEntity &&
      other.id == id &&
      other.name == name &&
      other.code == code &&
      other.icon == icon;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      code.hashCode ^
      icon.hashCode;
  }

  @override
  String toString() {
    return 'FinanceBankInstitutionEntity(id: $id, name: $name, code: $code, icon: $icon)';
  }
}
