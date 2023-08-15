import 'dart:convert';

class CnaeEntity {

  CnaeEntity({
    this.codigo,
    this.descricao,
  });

  factory CnaeEntity.fromMap(Map<String, dynamic> map) {
    return CnaeEntity(
      codigo: map['codigo'] ?? 0,
      descricao: map['descricao'] ?? '',
    );
  }

  factory CnaeEntity.fromJson(String source) => CnaeEntity.fromMap(json.decode(source) as Map<String, dynamic>);
  int? codigo;
  String? descricao;

  CnaeEntity copyWith({
    int? codigo,
    String? descricao,
  }) {
    return CnaeEntity(
      codigo: codigo ?? this.codigo,
      descricao: descricao ?? this.descricao,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codigo': codigo,
      'descricao': descricao,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'CnaeEntity(codigo: $codigo, descricao: $descricao)';
}
