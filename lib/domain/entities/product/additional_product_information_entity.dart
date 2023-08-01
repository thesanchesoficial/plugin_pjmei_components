import 'dart:convert';

class AdditionalProductInformationEntity {

  AdditionalProductInformationEntity({
    this.id,
    this.titulo,
    this.descricao,
  });

  factory AdditionalProductInformationEntity.fromMap(Map<String, dynamic> map) {
    return AdditionalProductInformationEntity(
      id: map['id'].toString(),
      titulo: map['titulo'].toString(),
      descricao: map['descricao'].toString(),
    );
  }

  factory AdditionalProductInformationEntity.fromJson(String source) => AdditionalProductInformationEntity.fromMap(json.decode(source));
  String? id;
  String? titulo;
  String? descricao;

  @override
  String toString() => 'AdditionalProductInformationEntity(id: $id, titulo: $titulo, descricao: $descricao)';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'descricao': descricao,
    };
  }

  String toJson() => json.encode(toMap());

  AdditionalProductInformationEntity copyWith({
    String? id,
    String? titulo,
    String? descricao,
  }) {
    return AdditionalProductInformationEntity(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      descricao: descricao ?? this.descricao,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AdditionalProductInformationEntity &&
      other.id == id &&
      other.titulo == titulo &&
      other.descricao == descricao;
  }

  @override
  int get hashCode => id.hashCode ^ titulo.hashCode ^ descricao.hashCode;
}
