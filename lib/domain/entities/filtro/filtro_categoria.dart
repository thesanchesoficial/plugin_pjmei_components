import 'dart:convert';

import 'filtro_subcategoria.dart';

class FiltroCategoria {
  String? id;
  String? nome;
  bool? ativo;
  bool? exibido;
  List<FiltroSubcategoria>? subcategorias;

  FiltroCategoria({
    this.id,
    this.nome,
    this.ativo,
    this.exibido,
    this.subcategorias,
  });

  @override
  String toString() {
    return 'FiltroCategoria(id: $id, nome: $nome, ativo: $ativo, exibido: $exibido, subcategorias: $subcategorias)';
  }

  limpar(){
    subcategorias?.forEach((element) {
      element.limpar();
    });
    ativo = false;
    exibido = true;
  }

  FiltroCategoria copyWith({
    String? id,
    String? nome,
    bool? ativo,
    bool? exibido,
    List<FiltroSubcategoria>? subcategorias,
  }) {
    return FiltroCategoria(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      ativo: ativo ?? this.ativo,
      exibido: exibido ?? this.exibido,
      subcategorias: subcategorias ?? this.subcategorias,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'ativo': ativo,
      'exibido': exibido,
      'subcategorias': subcategorias?.map((x) => x.toMap()).toList(),
    };
  }

  factory FiltroCategoria.fromMap(Map<String, dynamic> map) {
    return FiltroCategoria(
      id: map['id'],
      nome: map['nome'],
      ativo: map['ativo'],
      exibido: map['exibido'],
      subcategorias: map['subcategorias'] != null ? List<FiltroSubcategoria>.from(map['subcategorias']?.map((x) => FiltroSubcategoria.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FiltroCategoria.fromJson(String source) => FiltroCategoria.fromMap(json.decode(source));
}
