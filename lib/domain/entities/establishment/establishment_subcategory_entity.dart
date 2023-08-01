import 'dart:convert';

class EstablishmentSubcategoryEntity {
  
  EstablishmentSubcategoryEntity({
    this.id,
    this.nome,
    this.ativo,
    this.exibido,
  });

  factory EstablishmentSubcategoryEntity.fromMap(Map<String, dynamic> map) {
    return EstablishmentSubcategoryEntity(
      id: map['id'],
      nome: map['nome'],
      ativo: map['ativo'],
      exibido: map['exibido'],
    );
  }

  factory EstablishmentSubcategoryEntity.fromJson(String source) => EstablishmentSubcategoryEntity.fromMap(json.decode(source));
  String? id;
  String? nome;
  bool? ativo;
  bool? exibido;

  @override
  String toString() {
    return 'EstablishmentSubcategoryEntity(id: $id, nome: $nome, ativo: $ativo, exibido: $exibido)';
  }

  limpar(){
    ativo = false;
    exibido = true;
  }

  EstablishmentSubcategoryEntity copyWith({
    String? id,
    String? nome,
    bool? ativo,
    bool? exibido,
  }) {
    return EstablishmentSubcategoryEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      ativo: ativo ?? this.ativo,
      exibido: exibido ?? this.exibido,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'ativo': ativo,
      'exibido': exibido,
    };
  }

  String toJson() => json.encode(toMap());
}
