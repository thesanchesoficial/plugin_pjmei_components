import 'dart:convert';

class DocumentFilterEntity {

  DocumentFilterEntity({
    this.id,
    this.name,
    // this.type_document_id,
  });

  factory DocumentFilterEntity.fromMap(Map<String, dynamic> map) {
    return DocumentFilterEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      // type_document_id: map['type_document_id'] ?? ''
    );
  }

  factory DocumentFilterEntity.fromJson(String source) =>
      DocumentFilterEntity.fromMap(json.decode(source));
  String? id;
  String? name;
  String? type_document_id;

  DocumentFilterEntity copyWith({
    String? id,
    String? name,
    String? type_document_id,
  }) {
    return DocumentFilterEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      // type_document_id: type_document_id ?? this.type_document_id
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      // 'type_document_id': type_document_id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'DocumentFilterEntity(id: $id, name: $name)';
  }
}