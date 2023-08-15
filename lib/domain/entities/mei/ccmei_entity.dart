import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class CcmeiEntity {

  CcmeiEntity({
    this.nomeCivil,
    this.cpf,
    this.cnpjBasico,
    this.cnpjOrdem,
    this.cnpjDv,
    this.dataInicio,
    this.razaoSocial,
    this.nomeFantasia,
    this.capitalSocial,
    this.situacao,
    this.dataSituacao,
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
    this.cnaePrincipal,
  });

  factory CcmeiEntity.fromMap(Map<String, dynamic> map) {
    return CcmeiEntity(
      nomeCivil: map['nomeCivil'] ?? map['nome_civil'] ?? '',
      cpf: map['cpf'] ?? '',
      cnpjBasico: map['cnpjBasico'] ?? map['cnpj_basico'] ?? '',
      cnpjOrdem: map['cnpjOrdem'] ?? map['cnpj_ordem'] ?? '',
      cnpjDv: map['cnpjDv'] ?? map['cnpj_dv'] ?? '',
      dataInicio: map['dataInicio'] ?? map['data_inicio'] ?? '',
      razaoSocial: map['razaoSocial'] ?? map['razao_social'] ?? '',
      nomeFantasia: map['nomeFantasia'] ?? map['nome_fantasia'] ?? '',
      capitalSocial: map['capitalSocial'] ?? map['capital_social'] ?? '',
      situacao: map['situacao'] ?? '',
      dataSituacao: map['dataSituacao'] ?? map['data_situacao'] ?? '',
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      numero: map['numero'] ?? '',
      bairro: map['bairro'] ?? '',
      municipio: map['municipio'] ?? '',
      uf: map['uf'] ?? '',
      mei: map['mei'] ?? false,
      dataOpMei: map['dataOpMei'] ?? map['data_op_mei'] ?? '',
      dataExcMei: map['dataExcMei'] ?? map['data_exc_mei'] ?? '',
      complemento: map['complemento'] ?? '',
      cnaesSecundarios: map['cnaesSecundarios'] == null ? map['cnaes_secundarios'] == null ? [] : List<CnaeEntity>.from(map['cnaes_secundarios']?.map((x) => CnaeEntity.fromMap(x))) : List<CnaeEntity>.from(map['cnaesSecundarios']?.map((x) => CnaeEntity.fromMap(x))),
      cnaePrincipal: map['cnaePrincipal'] == null ? map['cnae_principal'] == null ? null : CnaeEntity.fromMap(map['cnae_principal']) : CnaeEntity.fromMap(map['cnaePrincipal']),
    );
  }

  factory CcmeiEntity.fromJson(String source) => CcmeiEntity.fromMap(json.decode(source));
  String? nomeCivil;
  String? cpf;
  String? cnpjBasico;
  String? cnpjOrdem;
  String? cnpjDv;
  String? dataInicio;
  String? razaoSocial;
  String? nomeFantasia;
  String? capitalSocial;
  String? situacao;
  String? dataSituacao;
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
  CnaeEntity? cnaePrincipal;

  CcmeiEntity copyWith({
    String? nomeCivil,
    String? cpf,
    String? cnpjBasico,
    String? cnpjOrdem,
    String? cnpjDv,
    String? dataInicio,
    String? razaoSocial,
    String? nomeFantasia,
    String? capitalSocial,
    String? situacao,
    String? dataSituacao,
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
    CnaeEntity? cnaePrincipal,
  }) {
    return CcmeiEntity(
      nomeCivil: nomeCivil ?? this.nomeCivil,
      cpf: cpf ?? this.cpf,
      cnpjBasico: cnpjBasico ?? this.cnpjBasico,
      cnpjOrdem: cnpjOrdem ?? this.cnpjOrdem,
      cnpjDv: cnpjDv ?? this.cnpjDv,
      dataInicio: dataInicio ?? this.dataInicio,
      razaoSocial: razaoSocial ?? this.razaoSocial,
      nomeFantasia: nomeFantasia ?? this.nomeFantasia,
      capitalSocial: capitalSocial ?? this.capitalSocial,
      situacao: situacao ?? this.situacao,
      dataSituacao: dataSituacao ?? this.dataSituacao,
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
      cnaePrincipal: cnaePrincipal ?? this.cnaePrincipal,
    );
  }

  @override
  String toString() {
    return 'CcmeiEntity(nomeCivil: $nomeCivil, cpf: $cpf, cnpjBasico: $cnpjBasico, cnpjOrdem: $cnpjOrdem, cnpjDv: $cnpjDv, dataInicio: $dataInicio, razaoSocial: $razaoSocial, nomeFantasia: $nomeFantasia, capitalSocial: $capitalSocial, situacao: $situacao, dataSituacao: $dataSituacao, cep: $cep, logradouro: $logradouro, numero: $numero, bairro: $bairro, municipio: $municipio, uf: $uf, mei: $mei, dataOpMei: $dataOpMei, dataExcMei: $dataExcMei, complemento: $complemento, cnaesSecundarios: $cnaesSecundarios, cnaePrincipal: $cnaePrincipal)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CcmeiEntity &&
      other.nomeCivil == nomeCivil &&
      other.cpf == cpf &&
      other.cnpjBasico == cnpjBasico &&
      other.cnpjOrdem == cnpjOrdem &&
      other.cnpjDv == cnpjDv &&
      other.dataInicio == dataInicio &&
      other.razaoSocial == razaoSocial &&
      other.nomeFantasia == nomeFantasia &&
      other.capitalSocial == capitalSocial &&
      other.situacao == situacao &&
      other.dataSituacao == dataSituacao &&
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
      other.cnaePrincipal == cnaePrincipal;
  }

  @override
  int get hashCode {
    return nomeCivil.hashCode ^
      cpf.hashCode ^
      cnpjBasico.hashCode ^
      cnpjOrdem.hashCode ^
      cnpjDv.hashCode ^
      dataInicio.hashCode ^
      razaoSocial.hashCode ^
      nomeFantasia.hashCode ^
      capitalSocial.hashCode ^
      situacao.hashCode ^
      dataSituacao.hashCode ^
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
      cnaePrincipal.hashCode;
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeCivil': nomeCivil,
      'cpf': cpf,
      'cnpjBasico': cnpjBasico,
      'cnpjOrdem': cnpjOrdem,
      'cnpjDv': cnpjDv,
      'dataInicio': dataInicio,
      'razaoSocial': razaoSocial,
      'nomeFantasia': nomeFantasia,
      'capitalSocial': capitalSocial,
      'situacao': situacao,
      'dataSituacao': dataSituacao,
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
      'cnaePrincipal': cnaePrincipal?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());
}
