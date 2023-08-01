import 'dart:convert';

class NotaFiscalCategoryEntity {
  String? description;
  NotaFiscalCategoryEntity({
    this.description,
  });

  NotaFiscalCategoryEntity copyWith({
    String? description,
  }) {
    return NotaFiscalCategoryEntity(
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
    };
  }

  factory NotaFiscalCategoryEntity.fromMap(Map<String, dynamic> map) {
    return NotaFiscalCategoryEntity(
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotaFiscalCategoryEntity.fromJson(String source) =>
      NotaFiscalCategoryEntity.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NotaFiscalCategoryEntity(description: $description)';
}
