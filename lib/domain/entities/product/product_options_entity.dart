import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/product/product_option_items_entity.dart';

class ProductOptionsEntity {
  ProductOptionsEntity({
    this.id,
    this.nome,
    this.min,
    this.max,
    this.visivel,
    this.itens,
    this.qtdEscolhido = 0,
    this.valorRadio,
  });

  factory ProductOptionsEntity.fromMap(Map<String, dynamic> map) {
    return ProductOptionsEntity(
      id: map['id'].toString(),
      nome: map['nome'].toString(),
      min: map['min'],
      max: map['max'],
      visivel: map['visivel'],
      itens: map['itens_opcao'] == null
          ? map['itens'] == null
              ? []
              : List<ProductOptionItemsEntity>.from(
                  map['itens']?.map((x) => ProductOptionItemsEntity.fromMap(x)))
          : List<ProductOptionItemsEntity>.from(
              map['itens_opcao']?.map((x) => ProductOptionItemsEntity.fromMap(x))),
      qtdEscolhido: (map['quantidade'] == null
          ? 0
          : (int.tryParse(map['quantidade'].toString()) ?? 0)),
      valorRadio: '',
    );
  }

  factory ProductOptionsEntity.fromJson(String source) => ProductOptionsEntity.fromMap(json.decode(source));
  
  String? id;
  String? nome;
  int? min;
  int? max;
  int? qtdEscolhido;
  String? valorRadio;
  bool? visivel;
  List<ProductOptionItemsEntity>? itens;

  ProductOptionsEntity copyWith({
    String? id,
    String? nome,
    int? min,
    int? max,
    bool? visivel,
    int? qtdEscolhido,
    List<ProductOptionItemsEntity>? itens,
    String? valorRadio,
  }) {
    List<ProductOptionItemsEntity> listaItens = [];
    if (itens == null && this.itens != null) {
      listaItens = [];
      this.itens?.forEach((element) {
        element = element.copyWith();
        listaItens.add(element);
      });
    }
    return ProductOptionsEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      min: min ?? this.min,
      max: max ?? this.max,
      visivel: visivel ?? this.visivel,
      itens: itens ?? listaItens, // CopyWith
      qtdEscolhido: qtdEscolhido ?? this.qtdEscolhido,
      valorRadio: valorRadio ?? this.valorRadio,
    );
  }

  ProductOptionsEntity iniciar() {
    List<ProductOptionItemsEntity> listaItens = [];
    if (itens != null) {
      listaItens = [];
      itens?.forEach((element) {
        element = element.iniciar();
        listaItens.add(element);
      });
    }

    return ProductOptionsEntity(
      id: id,
      nome: nome,
      qtdEscolhido: 0,
      itens: listaItens,
      max: max,
      min: min,
      valorRadio: '',
      visivel: visivel,
    );
  }

  ProductOptionsEntity limpar() {
    List<ProductOptionItemsEntity> listaItens = [];
    if (itens != null) {
      listaItens = [];
      itens?.forEach((element) {
        element = element.iniciar(); // Seria o mesmo que limpar
        listaItens.add(element);
      });
    }
    return ProductOptionsEntity(
      id: id,
      nome: nome,
      qtdEscolhido: 0,
      itens: listaItens,
      max: max,
      min: min,
      valorRadio: '',
      visivel: visivel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'min': min,
      'max': max,
      'visivel': visivel,
      'itens': itens?.map((x) => x.toMap()).toList(),
      'itens_opcao': itens?.map((x) => x.toMap()).toList(),
      'quantidade': itens?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ProductOptionsEntity(id: $id, nome: $nome, min: $min, max: $max, visivel: $visivel, itens: $itens, qtdEscolhido: $qtdEscolhido, valorRadio: $valorRadio)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductOptionsEntity &&
        other.id == id &&
        other.nome == nome &&
        other.min == min &&
        other.max == max &&
        other.visivel == visivel &&
        listEquals(other.itens, itens) &&
        other.qtdEscolhido == qtdEscolhido &&
        other.valorRadio == valorRadio;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        min.hashCode ^
        max.hashCode ^
        visivel.hashCode ^
        itens.hashCode ^
        qtdEscolhido.hashCode ^
        valorRadio.hashCode;
  }
}
