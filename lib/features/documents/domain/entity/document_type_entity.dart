import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'document_subtype_entity.dart';

class DocumentTypeEntity {
  String id;
  String name;
  List<DocumentSubtypeEntity>? subtype;
  DocumentTypeEntity({
    required this.id,
    required this.name,
    this.subtype,
  });

  DocumentTypeEntity copyWith({
    String? id,
    String? name,
    List<DocumentSubtypeEntity>? subtype,
  }) {
    return DocumentTypeEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      subtype: subtype ?? this.subtype,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'subtype': subtype?.map((x) => x.toMap()).toList(),
    };
  }

  factory DocumentTypeEntity.fromMap(Map<String, dynamic> map) {
    return DocumentTypeEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      subtype: map['subtype'] != null ? List<DocumentSubtypeEntity>.from(map['subtype']?.map((x) => DocumentSubtypeEntity.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DocumentTypeEntity.fromJson(String source) => DocumentTypeEntity.fromMap(json.decode(source));

  @override
  String toString() => 'DocumentTypeEntity(id: $id, name: $name, subtype: $subtype)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DocumentTypeEntity &&
      other.id == id &&
      other.name == name &&
      listEquals(other.subtype, subtype);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ subtype.hashCode;
}
