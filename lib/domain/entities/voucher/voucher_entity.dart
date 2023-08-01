import 'dart:convert';

import 'package:plugin_pjmei_components/domain/entities/establishment/establishment_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/product/product_entity.dart';

class VoucherEntity {
  VoucherEntity({
    this.id,
    this.nome,
    this.codigo,
    this.freteGratis,
    this.dataInicio,
    this.dataTermino,
    this.limiteUso,
    this.numeroUso,
    this.limiteCliente,
    this.ativo,
    this.isVisible,
    this.subTotalMinimo,
    this.tipo,
    this.expirado,
    this.descontoPorcentagem,
    this.descontoDinheiro,
    this.estabelecimento,
    this.produto,
  });

  factory VoucherEntity.fromMap(Map<String, dynamic> map) {
    return VoucherEntity(
      id: map['id'],
      nome: map['nome'],
      codigo: map['codigo'],
      freteGratis: map['frete_gratis'] ?? false,
      dataInicio: DateTime.tryParse(map['data_inicio'].toString()),
      dataTermino: DateTime.tryParse(map['data_termino'].toString()),
      limiteUso: int.tryParse(map['limite_uso'].toString()),
      numeroUso: int.tryParse(map['numero_uso'].toString()),
      limiteCliente: int.tryParse(map['limite_cliente'].toString()),
      ativo: map['ativo'] ?? false,
      isVisible: map['isVisible'] ?? false,
      subTotalMinimo: num.tryParse(map['sub_total_minimo'].toString()),
      tipo: map['tipo'],
      expirado: map['expirado'] ?? false,
      descontoPorcentagem: int.tryParse(map['desconto_porcentagem'].toString()),
      descontoDinheiro: num.tryParse(map['desconto_dinheiro'].toString()),
      estabelecimento: map['estabelecimento'] == null
          ? null
          : EstablishmentEntity.fromMap(map['estabelecimento']),
      produto: map['produto'] == null ? null : ProductEntity.fromMap(map['produto']),
    );
  }

  factory VoucherEntity.fromJson(String source) => VoucherEntity.fromMap(json.decode(source));
  String? id;
  String? nome;
  String? codigo;
  bool? freteGratis;
  DateTime? dataInicio;
  DateTime? dataTermino;
  int? limiteUso;
  int? numeroUso;
  int? limiteCliente;
  bool? ativo;
  bool? isVisible;
  num? subTotalMinimo;
  String? tipo;
  bool? expirado;
  int? descontoPorcentagem;
  num? descontoDinheiro;
  EstablishmentEntity? estabelecimento;
  ProductEntity? produto;

  VoucherEntity copyWith({
    String? id,
    String? nome,
    String? codigo,
    bool? freteGratis,
    DateTime? dataInicio,
    DateTime? dataTermino,
    int? limiteUso,
    int? numeroUso,
    int? limiteCliente,
    bool? ativo,
    bool? isVisible,
    num? subTotalMinimo,
    String? tipo,
    bool? expirado,
    int? descontoPorcentagem,
    num? descontoDinheiro,
    EstablishmentEntity? estabelecimento,
    ProductEntity? produto,
  }) {
    return VoucherEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      codigo: codigo ?? this.codigo,
      freteGratis: freteGratis ?? this.freteGratis,
      dataInicio: dataInicio ?? this.dataInicio,
      dataTermino: dataTermino ?? this.dataTermino,
      limiteUso: limiteUso ?? this.limiteUso,
      numeroUso: numeroUso ?? this.numeroUso,
      limiteCliente: limiteCliente ?? this.limiteCliente,
      ativo: ativo ?? this.ativo,
      isVisible: isVisible ?? this.isVisible,
      subTotalMinimo: subTotalMinimo ?? this.subTotalMinimo,
      tipo: tipo ?? this.tipo,
      expirado: expirado ?? this.expirado,
      descontoPorcentagem: descontoPorcentagem ?? this.descontoPorcentagem,
      descontoDinheiro: descontoDinheiro ?? this.descontoDinheiro,
      estabelecimento: estabelecimento ?? this.estabelecimento,
      produto: produto ?? this.produto,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'codigo': codigo,
      'freteGratis': freteGratis,
      'dataInicio': dataInicio?.millisecondsSinceEpoch,
      'dataTermino': dataTermino?.millisecondsSinceEpoch,
      'limiteUso': limiteUso,
      'numeroUso': numeroUso,
      'limiteCliente': limiteCliente,
      'ativo': ativo,
      'isVisible': isVisible,
      'subTotalMinimo': subTotalMinimo,
      'tipo': tipo,
      'expirado': expirado,
      'descontoPorcentagem': descontoPorcentagem,
      'descontoDinheiro': descontoDinheiro,
      'estabelecimento': estabelecimento?.toMap(),
      'produto': produto?.toMap(),
    };
  }

  Map<String, dynamic> toMapApi() {
    return {
      'id': id,
      'nome': nome,
      'codigo': codigo,
      'frete_gratis': freteGratis ?? false,
      'data_inicio': dataInicio?.toUtc().toString(),
      'data_termino': dataTermino?.toUtc().toString(),
      'limite_uso': limiteUso ?? 10000,
      'numero_uso': numeroUso ?? 0,
      'limite_cliente': limiteCliente ?? 10000,
      'ativo': ativo ?? false,
      'isVisible': isVisible ?? false,
      'sub_total_minimo': subTotalMinimo ?? 0,
      'tipo': tipo ?? 'tipo comun',
      'expirado': expirado ?? false,
      'desconto_porcentagem': descontoPorcentagem,
      'desconto_dinheiro': descontoDinheiro,
      'estabelecimento': estabelecimento?.id,
      'produto': produto?.id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Cupom(id: $id, nome: $nome, codigo: $codigo, freteGratis: $freteGratis, dataInicio: $dataInicio, dataTermino: $dataTermino, limiteUso: $limiteUso, numeroUso: $numeroUso, limiteCliente: $limiteCliente, ativo: $ativo, subTotalMinimo: $subTotalMinimo, tipo: $tipo, expirado: $expirado, descontoPorcentagem: $descontoPorcentagem, descontoDinheiro: $descontoDinheiro, estabelecimento: $estabelecimento, produto: $produto)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VoucherEntity &&
        other.id == id &&
        other.nome == nome &&
        other.codigo == codigo &&
        other.freteGratis == freteGratis &&
        other.dataInicio == dataInicio &&
        other.dataTermino == dataTermino &&
        other.limiteUso == limiteUso &&
        other.numeroUso == numeroUso &&
        other.limiteCliente == limiteCliente &&
        other.ativo == ativo &&
        other.isVisible == isVisible &&
        other.subTotalMinimo == subTotalMinimo &&
        other.tipo == tipo &&
        other.expirado == expirado &&
        other.descontoPorcentagem == descontoPorcentagem &&
        other.descontoDinheiro == descontoDinheiro &&
        other.estabelecimento == estabelecimento &&
        other.produto == produto;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        codigo.hashCode ^
        freteGratis.hashCode ^
        dataInicio.hashCode ^
        dataTermino.hashCode ^
        limiteUso.hashCode ^
        numeroUso.hashCode ^
        limiteCliente.hashCode ^
        ativo.hashCode ^
        isVisible.hashCode ^
        subTotalMinimo.hashCode ^
        tipo.hashCode ^
        expirado.hashCode ^
        descontoPorcentagem.hashCode ^
        descontoDinheiro.hashCode ^
        estabelecimento.hashCode ^
        produto.hashCode;
  }
}
