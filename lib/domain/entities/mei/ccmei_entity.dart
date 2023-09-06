import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class CcmeiEntity {
  String? nomeCivil;
  String? cpf;
  String? cnpj;
  String? dataAbertura;
  String? nomeEmpresarial;
  String? formaAtuacao;
  String? ocupacaoPrincipal;
  String? atividadePrincipal;
  List<String>? atividadesSecundarias;
  String? url;
  String? razaoSocial;
  String? nomeFantasia;
  String? capitalSocial;
  String? situacaoCadastral;
  String? dataSituacaoCadastral;
  String? cep;
  String? logradouro;
  String? numero;
  String? bairro;
  String? municipio;
  String? uf;
  bool? mei;
  String? dataOpMei;
  String? dataExcMei;
  String? complemento;
  List<CnaeEntity>? cnaesSecundarios;
  List<PeriodosEnquadramentoEntity>? periodosEnquadramento;
  CnaeEntity? cnaePrincipal;
  CcmeiEntity({
    this.nomeCivil,
    this.cpf,
    this.cnpj,
    this.dataAbertura,
    this.nomeEmpresarial,
    this.formaAtuacao,
    this.ocupacaoPrincipal,
    this.atividadePrincipal,
    this.atividadesSecundarias,
    this.url,
    this.razaoSocial,
    this.nomeFantasia,
    this.capitalSocial,
    this.situacaoCadastral,
    this.dataSituacaoCadastral,
    this.cep,
    this.logradouro,
    this.numero,
    this.bairro,
    this.municipio,
    this.uf,
    this.mei,
    this.dataOpMei,
    this.dataExcMei,
    this.complemento,
    this.cnaesSecundarios,
    this.periodosEnquadramento,
    this.cnaePrincipal,
  });

  CcmeiEntity copyWith({
    String? nomeCivil,
    String? cpf,
    String? cnpj,
    String? dataAbertura,
    String? nomeEmpresarial,
    String? formaAtuacao,
    String? ocupacaoPrincipal,
    String? atividadePrincipal,
    List<String>? atividadesSecundarias,
    String? url,
    String? razaoSocial,
    String? nomeFantasia,
    String? capitalSocial,
    String? situacaoCadastral,
    String? dataSituacaoCadastral,
    String? cep,
    String? logradouro,
    String? numero,
    String? bairro,
    String? municipio,
    String? uf,
    bool? mei,
    String? dataOpMei,
    String? dataExcMei,
    String? complemento,
    List<CnaeEntity>? cnaesSecundarios,
    List<PeriodosEnquadramentoEntity>? periodosEnquadramento,
    CnaeEntity? cnaePrincipal,
  }) {
    return CcmeiEntity(
      nomeCivil: nomeCivil ?? this.nomeCivil,
      cpf: cpf ?? this.cpf,
      cnpj: cnpj ?? this.cnpj,
      dataAbertura: dataAbertura ?? this.dataAbertura,
      nomeEmpresarial: nomeEmpresarial ?? this.nomeEmpresarial,
      formaAtuacao: formaAtuacao ?? this.formaAtuacao,
      ocupacaoPrincipal: ocupacaoPrincipal ?? this.ocupacaoPrincipal,
      atividadePrincipal: atividadePrincipal ?? this.atividadePrincipal,
      atividadesSecundarias: atividadesSecundarias ?? this.atividadesSecundarias,
      url: url ?? this.url,
      razaoSocial: razaoSocial ?? this.razaoSocial,
      nomeFantasia: nomeFantasia ?? this.nomeFantasia,
      capitalSocial: capitalSocial ?? this.capitalSocial,
      situacaoCadastral: situacaoCadastral ?? this.situacaoCadastral,
      dataSituacaoCadastral: dataSituacaoCadastral ?? this.dataSituacaoCadastral,
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      numero: numero ?? this.numero,
      bairro: bairro ?? this.bairro,
      municipio: municipio ?? this.municipio,
      uf: uf ?? this.uf,
      mei: mei ?? this.mei,
      dataOpMei: dataOpMei ?? this.dataOpMei,
      dataExcMei: dataExcMei ?? this.dataExcMei,
      complemento: complemento ?? this.complemento,
      cnaesSecundarios: cnaesSecundarios ?? this.cnaesSecundarios,
      periodosEnquadramento: periodosEnquadramento ?? this.periodosEnquadramento,
      cnaePrincipal: cnaePrincipal ?? this.cnaePrincipal,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeCivil': nomeCivil,
      'cpf': cpf,
      'cnpj': cnpj,
      'dataAbertura': dataAbertura,
      'nomeEmpresarial': nomeEmpresarial,
      'formaAtuacao': formaAtuacao,
      'ocupacaoPrincipal': ocupacaoPrincipal,
      'atividadePrincipal': atividadePrincipal,
      'atividadesSecundarias': atividadesSecundarias,
      'url': url,
      'razaoSocial': razaoSocial,
      'nomeFantasia': nomeFantasia,
      'capitalSocial': capitalSocial,
      'situacaoCadastral': situacaoCadastral,
      'dataSituacaoCadastral': dataSituacaoCadastral,
      'cep': cep,
      'logradouro': logradouro,
      'numero': numero,
      'bairro': bairro,
      'municipio': municipio,
      'uf': uf,
      'mei': mei,
      'dataOpMei': dataOpMei,
      'dataExcMei': dataExcMei,
      'complemento': complemento,
      'cnaesSecundarios': cnaesSecundarios?.map((x) => x.toMap()).toList(),
      'periodosEnquadramento': periodosEnquadramento?.map((x) => x.toMap()).toList(),
      'cnaePrincipal': cnaePrincipal?.toMap(),
    };
  }

  factory CcmeiEntity.fromMap(Map<String, dynamic> map) {
    return CcmeiEntity(
      nomeCivil: map['nomeCivil'],
      cpf: map['cpf'],
      cnpj: map['cnpj'],
      dataAbertura: map['dataAbertura'],
      nomeEmpresarial: map['nomeEmpresarial'],
      formaAtuacao: map['formaAtuacao'],
      ocupacaoPrincipal: map['ocupacaoPrincipal'],
      atividadePrincipal: map['atividadePrincipal'],
      atividadesSecundarias: List<String>.from(map['atividadesSecundarias']),
      url: map['url'],
      razaoSocial: map['razaoSocial'],
      nomeFantasia: map['nomeFantasia'],
      capitalSocial: map['capitalSocial'],
      situacaoCadastral: map['situacaoCadastral'],
      dataSituacaoCadastral: map['dataSituacaoCadastral'],
      cep: map['cep'],
      logradouro: map['logradouro'],
      numero: map['numero'],
      bairro: map['bairro'],
      municipio: map['municipio'],
      uf: map['uf'],
      mei: map['mei'],
      dataOpMei: map['dataOpMei'],
      dataExcMei: map['dataExcMei'],
      complemento: map['complemento'],
      cnaesSecundarios: map['cnaesSecundarios'] != null ? List<CnaeEntity>.from(map['cnaesSecundarios']?.map((x) => CnaeEntity.fromMap(x))) : null,
      periodosEnquadramento: map['periodosEnquadramento'] != null ? List<PeriodosEnquadramentoEntity>.from(map['periodosEnquadramento']?.map((x) => PeriodosEnquadramentoEntity.fromMap(x))) : null,
      cnaePrincipal: map['cnaePrincipal'] != null ? CnaeEntity.fromMap(map['cnaePrincipal']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CcmeiEntity.fromJson(String source) => CcmeiEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CcmeiEntity(nomeCivil: $nomeCivil, cpf: $cpf, cnpj: $cnpj, dataAbertura: $dataAbertura, nomeEmpresarial: $nomeEmpresarial, formaAtuacao: $formaAtuacao, ocupacaoPrincipal: $ocupacaoPrincipal, atividadePrincipal: $atividadePrincipal, atividadesSecundarias: $atividadesSecundarias, url: $url, razaoSocial: $razaoSocial, nomeFantasia: $nomeFantasia, capitalSocial: $capitalSocial, situacaoCadastral: $situacaoCadastral, dataSituacaoCadastral: $dataSituacaoCadastral, cep: $cep, logradouro: $logradouro, numero: $numero, bairro: $bairro, municipio: $municipio, uf: $uf, mei: $mei, dataOpMei: $dataOpMei, dataExcMei: $dataExcMei, complemento: $complemento, cnaesSecundarios: $cnaesSecundarios, periodosEnquadramento: $periodosEnquadramento, cnaePrincipal: $cnaePrincipal)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CcmeiEntity &&
      other.nomeCivil == nomeCivil &&
      other.cpf == cpf &&
      other.cnpj == cnpj &&
      other.dataAbertura == dataAbertura &&
      other.nomeEmpresarial == nomeEmpresarial &&
      other.formaAtuacao == formaAtuacao &&
      other.ocupacaoPrincipal == ocupacaoPrincipal &&
      other.atividadePrincipal == atividadePrincipal &&
      listEquals(other.atividadesSecundarias, atividadesSecundarias) &&
      other.url == url &&
      other.razaoSocial == razaoSocial &&
      other.nomeFantasia == nomeFantasia &&
      other.capitalSocial == capitalSocial &&
      other.situacaoCadastral == situacaoCadastral &&
      other.dataSituacaoCadastral == dataSituacaoCadastral &&
      other.cep == cep &&
      other.logradouro == logradouro &&
      other.numero == numero &&
      other.bairro == bairro &&
      other.municipio == municipio &&
      other.uf == uf &&
      other.mei == mei &&
      other.dataOpMei == dataOpMei &&
      other.dataExcMei == dataExcMei &&
      other.complemento == complemento &&
      listEquals(other.cnaesSecundarios, cnaesSecundarios) &&
      listEquals(other.periodosEnquadramento, periodosEnquadramento) &&
      other.cnaePrincipal == cnaePrincipal;
  }

  @override
  int get hashCode {
    return nomeCivil.hashCode ^
      cpf.hashCode ^
      cnpj.hashCode ^
      dataAbertura.hashCode ^
      nomeEmpresarial.hashCode ^
      formaAtuacao.hashCode ^
      ocupacaoPrincipal.hashCode ^
      atividadePrincipal.hashCode ^
      atividadesSecundarias.hashCode ^
      url.hashCode ^
      razaoSocial.hashCode ^
      nomeFantasia.hashCode ^
      capitalSocial.hashCode ^
      situacaoCadastral.hashCode ^
      dataSituacaoCadastral.hashCode ^
      cep.hashCode ^
      logradouro.hashCode ^
      numero.hashCode ^
      bairro.hashCode ^
      municipio.hashCode ^
      uf.hashCode ^
      mei.hashCode ^
      dataOpMei.hashCode ^
      dataExcMei.hashCode ^
      complemento.hashCode ^
      cnaesSecundarios.hashCode ^
      periodosEnquadramento.hashCode ^
      cnaePrincipal.hashCode;
  }
}

class PeriodosEnquadramentoEntity {
  String periodo;
  String inicio;
  String fim;
  PeriodosEnquadramentoEntity({
    required this.periodo,
    required this.inicio,
    required this.fim,
  });

  PeriodosEnquadramentoEntity copyWith({
    String? periodo,
    String? inicio,
    String? fim,
  }) {
    return PeriodosEnquadramentoEntity(
      periodo: periodo ?? this.periodo,
      inicio: inicio ?? this.inicio,
      fim: fim ?? this.fim,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'periodo': periodo,
      'inicio': inicio,
      'fim': fim,
    };
  }

  factory PeriodosEnquadramentoEntity.fromMap(Map<String, dynamic> map) {
    return PeriodosEnquadramentoEntity(
      periodo: map['periodo'] ?? '',
      inicio: map['inicio'] ?? '',
      fim: map['fim'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PeriodosEnquadramentoEntity.fromJson(String source) =>
      PeriodosEnquadramentoEntity.fromMap(json.decode(source));

  @override
  String toString() =>
      'PeriodosEnquadramentoEntity(periodo: $periodo, inicio: $inicio, fim: $fim)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PeriodosEnquadramentoEntity &&
        other.periodo == periodo &&
        other.inicio == inicio &&
        other.fim == fim;
  }

  @override
  int get hashCode => periodo.hashCode ^ inicio.hashCode ^ fim.hashCode;
}
