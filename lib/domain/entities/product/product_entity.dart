import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/establishment/establishment_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/image/image_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/product/additional_product_information_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/product/product_options_entity.dart';

class ProductEntity {
  ProductEntity({
    this.tipo,
    this.nome,
    this.descricao,
    this.tipoDesconto,
    this.desconto,
    this.precoSemDesconto,
    this.visivel,
    this.estabelecimento,
    this.objeto,
    this.precoComDesconto,
    this.valorDesconto,
    this.categoria,
    this.destaque,
    this.id,
    this.apagado,
    this.informacoesAdicionais,
    this.opcoes,
    this.total,
    this.imagens,
  });

  factory ProductEntity.fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      tipo: map['tipo'].toString(),
      nome: map['nome'].toString(),
      categoria: map['categoria'].toString(),
      descricao: map['descricao'].toString(),
      tipoDesconto: map['tipo_desconto'].toString(),
      desconto: double.tryParse(map['desconto'].toString()),
      precoSemDesconto: double.tryParse(map['precoSemDesconto'].toString()),
      visivel: map['visivel'],
      estabelecimento: EstablishmentEntity.fromMap(map['estabelecimento']),
      objeto: map['objeto'] == null
          ? map['servico'] == null
              ? {}
              : Map.from(map['servico'])
          : Map.from(map['objeto']),
      precoComDesconto: double.tryParse(map['precoComDesconto'].toString()),
      valorDesconto: double.tryParse(map['valorDesconto'].toString()),
      destaque: map['destaque'],
      id: map['id'].toString(),
      apagado: map['apagado'],
      informacoesAdicionais: map['informacoes_adicionais'] == null
          ? []
          : List<AdditionalProductInformationEntity>.from(map['informacoes_adicionais']
              ?.map((x) => AdditionalProductInformationEntity.fromMap(x))),
      opcoes: map['opcoes'] == null
          ? []
          : List<ProductOptionsEntity>.from(
              map['opcoes']?.map((x) => ProductOptionsEntity.fromMap(x))),
      imagens: map['imagem'] == null
          ? []
          : List<ImageEntity>.from(map['imagem']?.map((x) => ImageEntity.fromMap(x))),
    );
  }

  factory ProductEntity.fromJson(String source) => ProductEntity.fromMap(json.decode(source));

  String? tipo;
  String? nome;
  String? descricao;
  String? categoria;
  String? tipoDesconto;
  num? desconto;
  num? precoSemDesconto;
  bool? visivel;
  EstablishmentEntity? estabelecimento;
  Map? objeto;
  num? precoComDesconto;
  num? valorDesconto;
  bool? destaque;
  String? id;
  bool? apagado;
  List<AdditionalProductInformationEntity>? informacoesAdicionais;
  List<ProductOptionsEntity>? opcoes;
  num? total; // Parece que não é usado
  List<ImageEntity>? imagens;

  ProductEntity copyWith({
    String? tipo,
    String? nome,
    String? descricao,
    String? tipoDesconto,
    String? categoria,
    num? desconto,
    num? precoSemDesconto,
    bool? visivel,
    EstablishmentEntity? estabelecimento,
    Map? servico,
    Map? objeto,
    num? precoComDesconto,
    num? valorDesconto,
    num? total,
    bool? destaque,
    String? id,
    bool? apagado,
    List<AdditionalProductInformationEntity>? informacoesAdicionais,
    List<ProductOptionsEntity>? opcoes,
    List<ImageEntity>? imagens,
  }) {
    List<ProductOptionsEntity> listOpcoes = [];
    if (opcoes == null && this.opcoes != null) {
      listOpcoes = [];
      this.opcoes?.forEach((element) {
        element = element.iniciar();
        listOpcoes.add(element.iniciar());
      });
    }
    List<AdditionalProductInformationEntity> listaInformacoesAdicionais = [];
    if (informacoesAdicionais == null && this.informacoesAdicionais != null) {
      listaInformacoesAdicionais = [];
      this.informacoesAdicionais?.forEach((element) {
        element = element.copyWith();
        listaInformacoesAdicionais.add(element);
      });
    }
    List<ImageEntity> listaImagens = [];
    if (imagens == null && this.imagens != null) {
      listaImagens = [];
      this.imagens?.forEach((element) {
        element = element.copyWith();
        listaImagens.add(element);
      });
    }
    return ProductEntity(
      tipo: tipo ?? this.tipo,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      categoria: categoria ?? this.categoria,
      tipoDesconto: tipoDesconto ?? this.tipoDesconto,
      desconto: desconto ?? this.desconto,
      precoSemDesconto: precoSemDesconto ?? this.precoSemDesconto,
      visivel: visivel ?? this.visivel,
      estabelecimento: estabelecimento ?? this.estabelecimento?.copyWith(), // CopyWith
      objeto: objeto ?? this.objeto, // Map (por enquanto)
      precoComDesconto: precoComDesconto ?? this.precoComDesconto,
      valorDesconto: valorDesconto ?? this.valorDesconto,
      destaque: destaque ?? this.destaque,
      id: id ?? this.id,
      apagado: apagado ?? this.apagado,
      informacoesAdicionais: informacoesAdicionais ?? listaInformacoesAdicionais, // CopyWith
      opcoes: opcoes ?? listOpcoes, // CopyWith
      total: total ?? this.total,
      imagens: imagens ?? listaImagens, // CopyWith
    );
  }

  ProductEntity limpar() {
    List<ProductOptionsEntity> listaOpcoes = [];
    if (opcoes != null) {
      listaOpcoes = [];
      opcoes?.forEach((element) {
        element = element.limpar();
        listaOpcoes.add(element);
      });
    }
    return ProductEntity(
      tipo: tipo,
      nome: nome,
      descricao: descricao,
      categoria: categoria,
      tipoDesconto: tipoDesconto,
      desconto: desconto,
      precoSemDesconto: precoSemDesconto,
      visivel: visivel,
      estabelecimento: estabelecimento,
      objeto: objeto,
      precoComDesconto: precoComDesconto,
      valorDesconto: valorDesconto,
      destaque: destaque,
      id: id,
      apagado: apagado,
      informacoesAdicionais: informacoesAdicionais,
      opcoes: listaOpcoes,
      total: total ?? total,
      imagens: imagens,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tipo': tipo,
      'nome': nome,
      'categoria': categoria,
      'descricao': descricao,
      'tipoDesconto': tipoDesconto,
      'tipo_desconto': tipoDesconto,
      'desconto': desconto,
      'precoSemDesconto': precoSemDesconto,
      'visivel': visivel,
      'estabelecimento': estabelecimento?.toMap(),
      'objeto': objeto,
      'precoComDesconto': precoComDesconto,
      'valorDesconto': valorDesconto,
      'destaque': destaque,
      'id': id,
      'apagado': apagado,
      'informacoesAdicionais':
          informacoesAdicionais?.map((x) => x.toMap()).toList(),
      'informacoes_adicionais':
          informacoesAdicionais?.map((x) => x.toMap()).toList(),
      'opcoes': opcoes?.map((x) => x.toMap()).toList(),
      'imagens': imagens?.map((x) => x.toMap()).toList(),
      'imagem': imagens?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ProductEntity(tipo: $tipo, nome: $nome, descricao: $descricao, tipoDesconto: $tipoDesconto, desconto: $desconto, precoSemDesconto: $precoSemDesconto, visivel: $visivel, estabelecimento: $estabelecimento, objeto: $objeto, precoComDesconto: $precoComDesconto, valorDesconto: $valorDesconto, destaque: $destaque, id: $id, apagado: $apagado, informacoesAdicionais: $informacoesAdicionais, opcoes: $opcoes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductEntity &&
        other.tipo == tipo &&
        other.nome == nome &&
        other.descricao == descricao &&
        other.tipoDesconto == tipoDesconto &&
        other.desconto == desconto &&
        other.precoSemDesconto == precoSemDesconto &&
        other.visivel == visivel &&
        other.estabelecimento == estabelecimento &&
        mapEquals(other.objeto, objeto) &&
        other.precoComDesconto == precoComDesconto &&
        other.valorDesconto == valorDesconto &&
        other.destaque == destaque &&
        other.id == id &&
        other.apagado == apagado &&
        listEquals(other.informacoesAdicionais, informacoesAdicionais) &&
        listEquals(other.opcoes, opcoes);
  }

  @override
  int get hashCode {
    return tipo.hashCode ^
        nome.hashCode ^
        descricao.hashCode ^
        tipoDesconto.hashCode ^
        desconto.hashCode ^
        precoSemDesconto.hashCode ^
        visivel.hashCode ^
        estabelecimento.hashCode ^
        objeto.hashCode ^
        precoComDesconto.hashCode ^
        valorDesconto.hashCode ^
        destaque.hashCode ^
        id.hashCode ^
        apagado.hashCode ^
        informacoesAdicionais.hashCode ^
        opcoes.hashCode;
  }

  Map<String, dynamic> calcularValorOpcoes() {
    bool aPartirDe = false;
    double totalMin = 0;
    double totalMax = 0;

    if (opcoes != null) {
      opcoes?.forEach((element) {
        if (element.itens != null && element.itens!.isNotEmpty) {
          num? valorMinimo;
          num? valorMaximo;
          element.itens?.forEach((elementItem) {
            if (elementItem.valor != null) {
              if ((element.min ?? 0) > 0 &&
                  (valorMinimo == null ||
                      (elementItem.valor ?? 0) * (element.min ?? 0) <
                          (valorMinimo ?? 0))) {
                valorMinimo = (elementItem.valor ?? 0) * (element.min ?? 0);
              }
              if ((element.max ?? 0) > 0 &&
                  (valorMaximo == null ||
                      (elementItem.valor ?? 0) * (element.max ?? 0) >
                          (valorMaximo ?? 0))) {
                valorMaximo = (elementItem.valor ?? 0) * (element.max ?? 0);
              }
              if (elementItem.valor != null && (elementItem.valor ?? 0) > 0) {
                aPartirDe = true;
              }
            }
          });
          if (valorMinimo != null) totalMin += (valorMinimo ?? 0);
          if (valorMaximo != null) totalMax += (valorMaximo ?? 0);
        }
      });
    }

    final Map<String, dynamic> retorno = {
      'totalMin': totalMin,
      'totalMax': totalMax,
      'aPartirDe': aPartirDe,
      'minMaxDiferente': totalMin != totalMax,
    };

    return retorno;
  }

  bool possuiIconesInformativos() {
    bool exibirIcones = false;
    objeto ??= {};
    if (objeto!['to_na_mesa'] == true) {
      exibirIcones = true; // ! Passar para classes
    } else {
      if (objeto!['serve_quantos'] != null &&
          objeto!['serve_quantos'] > 0) {
        exibirIcones = true;
      } else {
        if (objeto!['alergenicos'] != null &&
            objeto!['alergenicos'].toString() != '') {
          exibirIcones = true;
        } else {
          if (objeto!['para_maiores'] == true) exibirIcones = true;
        }
      }
    }
    return exibirIcones;
  }
}
