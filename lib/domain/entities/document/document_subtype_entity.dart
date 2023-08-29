import 'dart:convert';

class DocumentSubtypeEntity {
  String id;
  String name;
  DocumentSubtypeEntity({
    required this.id,
    required this.name,
  });

  DocumentSubtypeEntity copyWith({
    String? id,
    String? name,
  }) {
    return DocumentSubtypeEntity(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory DocumentSubtypeEntity.fromMap(Map<String, dynamic> map) {
    return DocumentSubtypeEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DocumentSubtypeEntity.fromJson(String source) => DocumentSubtypeEntity.fromMap(json.decode(source));

  @override
  String toString() => 'DocumentSubtypeEntity(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DocumentSubtypeEntity &&
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
