import 'dart:convert';

class DocumentEntity {

  DocumentEntity({
    this.id,
    this.cnpj,
    this.dueDate,
    this.value,
    this.url,
  });

  factory DocumentEntity.fromMap(Map<dynamic, dynamic> map) {
    return DocumentEntity(
      id: map['id'] ?? '',
      cnpj: map['cnpj'] ?? '',
      dueDate: map['dueDate'] != null ? DateTime.tryParse(map['dueDate']) : null,
      value: num.parse(map['value'].toString()),
      url: map['url'] ?? '',
    );
  }

  factory DocumentEntity.fromJson(String source) => DocumentEntity.fromMap(json.decode(source));
  String? id;
  String? cnpj;
  DateTime? dueDate;
  num? value;
  String? url;

  DocumentEntity copyWith({
    String? id,
    String? cnpj,
    DateTime? dueDate,
    num? value,
    String? url,
  }) {
    return DocumentEntity(
      id: id ?? this.id,
      cnpj: cnpj ?? this.cnpj,
      dueDate: dueDate ?? this.dueDate,
      value: value ?? this.value,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cnpj': cnpj,
      'due_date': dueDate?.toIso8601String(),
      'value': value,
      'url': url,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'DocumentEntity(id: $id, cnpj: $cnpj, value: $value)';
  }
}