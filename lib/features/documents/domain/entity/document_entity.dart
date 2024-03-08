import 'dart:convert';

class DocumentEntity {
  String? id;
  String url;
  String category;
  String? title;
  String? createdAt;
  String? updatedAt;
  String companyId;
  
  DocumentEntity({
    this.id,
    required this.url,
    required this.category,
    this.title,
    this.createdAt,
    this.updatedAt,
    required this.companyId,
  });

  DocumentEntity copyWith({
    String? id,
    String? url,
    String? category,
    String? title,
    String? createdAt,
    String? updatedAt,
    String? companyId,
  }) {
    return DocumentEntity(
      id: id ?? this.id,
      url: url ?? this.url,
      category: category ?? this.category,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      companyId: companyId ?? this.companyId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'category': category,
      'title': title,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'companyId': companyId,
    };
  }

  factory DocumentEntity.fromMap(Map<String, dynamic> map) {
    return DocumentEntity(
      id: map['id'],
      url: map['url'] ?? '',
      category: map['category'] ?? '',
      title: map['title'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      companyId: map['companyId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DocumentEntity.fromJson(String source) => DocumentEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DocumentEntity(id: $id, url: $url, category: $category, title: $title, createdAt: $createdAt, updatedAt: $updatedAt, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DocumentEntity &&
      other.id == id &&
      other.url == url &&
      other.category == category &&
      other.title == title &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.companyId == companyId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      url.hashCode ^
      category.hashCode ^
      title.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      companyId.hashCode;
  }
}
