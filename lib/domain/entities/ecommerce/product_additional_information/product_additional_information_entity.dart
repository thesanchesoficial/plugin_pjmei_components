import 'dart:convert';

class ProductAdditionalInformationEntity {
  String id;
  String name;
  String description;
  ProductAdditionalInformationEntity({
    required this.id,
    required this.name,
    required this.description,
  });

  ProductAdditionalInformationEntity copyWith({
    String? id,
    String? name,
    String? description,
  }) {
    return ProductAdditionalInformationEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }

  factory ProductAdditionalInformationEntity.fromMap(Map<String, dynamic> map) {
    return ProductAdditionalInformationEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductAdditionalInformationEntity.fromJson(String source) => ProductAdditionalInformationEntity.fromMap(json.decode(source));

  @override
  String toString() => 'ProductAdditionalInformationEntity(id: $id, name: $name, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductAdditionalInformationEntity &&
      other.id == id &&
      other.name == name &&
      other.description == description;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ description.hashCode;
}
