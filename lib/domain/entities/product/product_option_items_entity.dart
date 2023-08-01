import 'dart:convert';

class ProductOptionItemsEntity {

  ProductOptionItemsEntity({
    this.id,
    this.nome,
    this.valor,
    this.descricao,
    this.visivel,
    this.qtdEscolhido = 0,
  });

  factory ProductOptionItemsEntity.fromMap(Map<String, dynamic> map) {
    return ProductOptionItemsEntity(
      id: map['id'].toString(),
      nome: map['nome'].toString(),
      valor: double.tryParse(map['valor'].toString()),
      descricao: map['descricao'].toString(),
      visivel: map['visivel'] ?? false,
      qtdEscolhido: map['quantidade'] ?? 0,
    );
  }

  factory ProductOptionItemsEntity.fromJson(String source) => ProductOptionItemsEntity.fromMap(json.decode(source));
  String? id;
  String? nome;
  num? valor;
  String? descricao;
  bool? visivel;
  int? qtdEscolhido;

  ProductOptionItemsEntity copyWith({
    String? id,
    String? nome,
    num? valor,
    String? descricao,
    bool? visivel,
    int? qtdEscolhido,
  }) {
    return ProductOptionItemsEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      valor: valor ?? this.valor,
      descricao: descricao ?? this.descricao,
      visivel: visivel ?? this.visivel,
      qtdEscolhido: qtdEscolhido ?? this.qtdEscolhido,
    );
  }

  ProductOptionItemsEntity iniciar(){
    return ProductOptionItemsEntity(
      id: id,
      descricao: descricao,
      nome: nome,
      valor: valor,
      visivel: visivel,
      qtdEscolhido: 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'valor': valor,
      'descricao': descricao,
      'visivel': visivel,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ItensOpcao(id: $id, nome: $nome, valor: $valor, descricao: $descricao, visivel: $visivel, qtdEscolhido: $qtdEscolhido)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductOptionItemsEntity &&
      other.id == id &&
      other.nome == nome &&
      other.valor == valor &&
      other.descricao == descricao &&
      other.visivel == visivel &&
      other.qtdEscolhido == qtdEscolhido;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nome.hashCode ^
      valor.hashCode ^
      descricao.hashCode ^
      visivel.hashCode ^
      qtdEscolhido.hashCode;
  }
}
