import 'dart:convert';

class DocumentEntity {
  String id;
  String url;
  String category; // folha / fiscal / documento
  String? tag;
  String? dueDate;
  String? barCode;
  String createdAt;
  String updatedAt;
  String companyId;
  num? value;
  num? year;
  
  DocumentEntity({
    required this.id,
    required this.url,
    required this.category,
    this.tag,
    this.dueDate,
    this.barCode,
    required this.createdAt,
    required this.updatedAt,
    required this.companyId,
    this.value,
    this.year,
  });

  DocumentEntity copyWith({
    String? id,
    String? url,
    String? category,
    String? tag,
    String? dueDate,
    String? barCode,
    String? createdAt,
    String? updatedAt,
    String? companyId,
    num? value,
    num? year,
  }) {
    return DocumentEntity(
      id: id ?? this.id,
      url: url ?? this.url,
      category: category ?? this.category,
      tag: tag ?? this.tag,
      dueDate: dueDate ?? this.dueDate,
      barCode: barCode ?? this.barCode,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      companyId: companyId ?? this.companyId,
      value: value ?? this.value,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'category': category,
      'tag': tag,
      'dueDate': dueDate,
      'barCode': barCode,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'companyId': companyId,
      'value': value,
      'year': year,
    };
  }

  factory DocumentEntity.fromMap(Map<String, dynamic> map) {
    return DocumentEntity(
      id: map['id'] ?? '',
      url: map['url'] ?? '',
      category: map['category'] ?? '',
      tag: map['tag'],
      dueDate: map['dueDate'],
      barCode: map['barCode'],
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      companyId: map['companyId'] ?? '',
      value: map['value'],
      year: map['year'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DocumentEntity.fromJson(String source) => DocumentEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DocumentEntity(id: $id, url: $url, category: $category, tag: $tag, dueDate: $dueDate, barCode: $barCode, createdAt: $createdAt, updatedAt: $updatedAt, companyId: $companyId, value: $value, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DocumentEntity &&
      other.id == id &&
      other.url == url &&
      other.category == category &&
      other.tag == tag &&
      other.dueDate == dueDate &&
      other.barCode == barCode &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.companyId == companyId &&
      other.value == value &&
      other.year == year;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      url.hashCode ^
      category.hashCode ^
      tag.hashCode ^
      dueDate.hashCode ^
      barCode.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      companyId.hashCode ^
      value.hashCode ^
      year.hashCode;
  }
}
