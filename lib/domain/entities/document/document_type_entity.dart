import 'dart:convert';

class DocumentTypeEntity {

  DocumentTypeEntity({
    this.id,
    this.name,
    // this.filters,
  });

  factory DocumentTypeEntity.fromMap(Map<String, dynamic> map) {
    return DocumentTypeEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      // filters: map['filters'] ?? []
    );
  }

  factory DocumentTypeEntity.fromJson(String source) =>
      DocumentTypeEntity.fromMap(json.decode(source));
  String? id;
  String? name;
  // List<String>? filters;

  DocumentTypeEntity copyWith({
    String? id,
    String? name,
    // List<String>? filters,
  }) {
    return DocumentTypeEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      // filters: filters ?? this.filters
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      // 'filters': filters,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'DocumentTypeEntity(id: $id, name: $name)';
  }
}