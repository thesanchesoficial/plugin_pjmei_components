import 'dart:convert';

class NotaFiscalServiceEntity {
  String? code;
  String? description;
  NotaFiscalServiceEntity({
    this.code,
    this.description,
  });

  NotaFiscalServiceEntity copyWith({
    String? description,
    String? code,
  }) {
    return NotaFiscalServiceEntity(
      code: code ?? this.code,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    };
  }

  factory NotaFiscalServiceEntity.fromMap(Map<String, dynamic> map) {
    return NotaFiscalServiceEntity(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotaFiscalServiceEntity.fromJson(String source) =>
      NotaFiscalServiceEntity.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NotaFiscalServiceEntity(code: $code, description: $description)';
  }
}
