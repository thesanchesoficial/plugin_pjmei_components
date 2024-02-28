import 'dart:convert';

class FiltroSubcategoria {
  String? id;
  String? nome;
  bool? ativo;
  bool? exibido;
  
  FiltroSubcategoria({
    this.id,
    this.nome,
    this.ativo,
    this.exibido,
  });

  @override
  String toString() {
    return 'FiltroSubcategoria(id: $id, nome: $nome, ativo: $ativo, exibido: $exibido)';
  }

  limpar(){
    ativo = false;
    exibido = true;
  }

  FiltroSubcategoria copyWith({
    String? id,
    String? nome,
    bool? ativo,
    bool? exibido,
  }) {
    return FiltroSubcategoria(
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

  factory FiltroSubcategoria.fromMap(Map<String, dynamic> map) {
    return FiltroSubcategoria(
      id: map['id'],
      nome: map['nome'],
      ativo: map['ativo'],
      exibido: map['exibido'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FiltroSubcategoria.fromJson(String source) => FiltroSubcategoria.fromMap(json.decode(source));
}
