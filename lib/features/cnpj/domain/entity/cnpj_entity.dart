import 'dart:convert';
import 'package:flutter/foundation.dart';

import '../../../ccmei/domain/entity/cnae_entity.dart';

class CnpjEntity {
  String? cnpj;
  String? matriz;
  String? nomeEmpresarial;
  String? nomeFantasia;
  String? motivo;
  String? enteFederativo;
  String? natureza;
  CnaeEntity? cnaePrincipal;
  List<CnaeEntity>? cnaeSecundario;
  String? porte;
  String? municipio;
  String? cep;
  String? uf;
  String? numero;
  String? complemento;
  String? logradouro;
  String? bairro;
  String? ddd1;
  String? telefone1;
  String? email;
  String? dataAbertura;
  String? situacaoCadastral;
  String? dataSituacaoCadastral;
  String? situacaoEspecial;
  String? dataSituacaoEspecial;
  String? updatedAt;
  String? url;
  CnpjEntity({
    this.cnpj,
    this.matriz,
    this.nomeEmpresarial,
    this.nomeFantasia,
    this.motivo,
    this.enteFederativo,
    this.natureza,
    this.cnaePrincipal,
    this.cnaeSecundario,
    this.porte,
    this.municipio,
    this.cep,
    this.uf,
    this.numero,
    this.complemento,
    this.logradouro,
    this.bairro,
    this.ddd1,
    this.telefone1,
    this.email,
    this.dataAbertura,
    this.situacaoCadastral,
    this.dataSituacaoCadastral,
    this.situacaoEspecial,
    this.dataSituacaoEspecial,
    this.updatedAt,
    this.url,
  });


  CnpjEntity copyWith({
    String? cnpj,
    String? matriz,
    String? nomeEmpresarial,
    String? nomeFantasia,
    String? motivo,
    String? enteFederativo,
    String? natureza,
    CnaeEntity? cnaePrincipal,
    List<CnaeEntity>? cnaeSecundario,
    String? porte,
    String? municipio,
    String? cep,
    String? uf,
    String? numero,
    String? complemento,
    String? logradouro,
    String? bairro,
    String? ddd1,
    String? telefone1,
    String? email,
    String? dataAbertura,
    String? situacaoCadastral,
    String? dataSituacaoCadastral,
    String? situacaoEspecial,
    String? dataSituacaoEspecial,
    String? updatedAt,
    String? url,
  }) {
    return CnpjEntity(
      cnpj: cnpj ?? this.cnpj,
      matriz: matriz ?? this.matriz,
      nomeEmpresarial: nomeEmpresarial ?? this.nomeEmpresarial,
      nomeFantasia: nomeFantasia ?? this.nomeFantasia,
      motivo: motivo ?? this.motivo,
      enteFederativo: enteFederativo ?? this.enteFederativo,
      natureza: natureza ?? this.natureza,
      cnaePrincipal: cnaePrincipal ?? this.cnaePrincipal,
      cnaeSecundario: cnaeSecundario ?? this.cnaeSecundario,
      porte: porte ?? this.porte,
      municipio: municipio ?? this.municipio,
      cep: cep ?? this.cep,
      uf: uf ?? this.uf,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      logradouro: logradouro ?? this.logradouro,
      bairro: bairro ?? this.bairro,
      ddd1: ddd1 ?? this.ddd1,
      telefone1: telefone1 ?? this.telefone1,
      email: email ?? this.email,
      dataAbertura: dataAbertura ?? this.dataAbertura,
      situacaoCadastral: situacaoCadastral ?? this.situacaoCadastral,
      dataSituacaoCadastral: dataSituacaoCadastral ?? this.dataSituacaoCadastral,
      situacaoEspecial: situacaoEspecial ?? this.situacaoEspecial,
      dataSituacaoEspecial: dataSituacaoEspecial ?? this.dataSituacaoEspecial,
      updatedAt: updatedAt ?? this.updatedAt,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cnpj': cnpj,
      'matriz': matriz,
      'nomeEmpresarial': nomeEmpresarial,
      'nomeFantasia': nomeFantasia,
      'motivo': motivo,
      'enteFederativo': enteFederativo,
      'natureza': natureza,
      'cnaePrincipal': cnaePrincipal?.toMap(),
      'cnaeSecundario': cnaeSecundario?.map((x) => x.toMap()).toList(),
      'porte': porte,
      'municipio': municipio,
      'cep': cep,
      'uf': uf,
      'numero': numero,
      'complemento': complemento,
      'logradouro': logradouro,
      'bairro': bairro,
      'ddd1': ddd1,
      'telefone1': telefone1,
      'email': email,
      'dataAbertura': dataAbertura,
      'situacaoCadastral': situacaoCadastral,
      'dataSituacaoCadastral': dataSituacaoCadastral,
      'situacaoEspecial': situacaoEspecial,
      'dataSituacaoEspecial': dataSituacaoEspecial,
      'updatedAt': updatedAt,
      'url': url,
    };
  }

  factory CnpjEntity.fromMap(Map<String, dynamic> map) {
    return CnpjEntity(
      cnpj: map['cnpj'],
      matriz: map['matriz'],
      nomeEmpresarial: map['nomeEmpresarial'],
      nomeFantasia: map['nomeFantasia'],
      motivo: map['motivo'],
      enteFederativo: map['enteFederativo'],
      natureza: map['natureza'],
      cnaePrincipal: map['cnaePrincipal'] != null ? CnaeEntity.fromMap(map['cnaePrincipal']) : null,
      cnaeSecundario: map['cnaeSecundario'] != null ? List<CnaeEntity>.from(map['cnaeSecundario']?.map((x) => CnaeEntity.fromMap(x))) : null,
      porte: map['porte'],
      municipio: map['municipio'],
      cep: map['cep'],
      uf: map['uf'],
      numero: map['numero'],
      complemento: map['complemento'],
      logradouro: map['logradouro'],
      bairro: map['bairro'],
      ddd1: map['ddd1'],
      telefone1: map['telefone1'],
      email: map['email'],
      dataAbertura: map['dataAbertura'],
      situacaoCadastral: map['situacaoCadastral'],
      dataSituacaoCadastral: map['dataSituacaoCadastral'],
      situacaoEspecial: map['situacaoEspecial'],
      dataSituacaoEspecial: map['dataSituacaoEspecial'],
      updatedAt: map['updatedAt'] ?? '',
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CnpjEntity.fromJson(String source) => CnpjEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CnpjEntity(cnpj: $cnpj, matriz: $matriz, nomeEmpresarial: $nomeEmpresarial, nomeFantasia: $nomeFantasia, motivo: $motivo, enteFederativo: $enteFederativo, natureza: $natureza, cnaePrincipal: $cnaePrincipal, cnaeSecundario: $cnaeSecundario, porte: $porte, municipio: $municipio, cep: $cep, uf: $uf, numero: $numero, complemento: $complemento, logradouro: $logradouro, bairro: $bairro, ddd1: $ddd1, telefone1: $telefone1, email: $email, dataAbertura: $dataAbertura, situacaoCadastral: $situacaoCadastral, dataSituacaoCadastral: $dataSituacaoCadastral, situacaoEspecial: $situacaoEspecial, dataSituacaoEspecial: $dataSituacaoEspecial, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CnpjEntity &&
      other.cnpj == cnpj &&
      other.matriz == matriz &&
      other.nomeEmpresarial == nomeEmpresarial &&
      other.nomeFantasia == nomeFantasia &&
      other.motivo == motivo &&
      other.enteFederativo == enteFederativo &&
      other.natureza == natureza &&
      other.cnaePrincipal == cnaePrincipal &&
      listEquals(other.cnaeSecundario, cnaeSecundario) &&
      other.porte == porte &&
      other.municipio == municipio &&
      other.cep == cep &&
      other.uf == uf &&
      other.numero == numero &&
      other.complemento == complemento &&
      other.logradouro == logradouro &&
      other.bairro == bairro &&
      other.ddd1 == ddd1 &&
      other.telefone1 == telefone1 &&
      other.email == email &&
      other.dataAbertura == dataAbertura &&
      other.situacaoCadastral == situacaoCadastral &&
      other.dataSituacaoCadastral == dataSituacaoCadastral &&
      other.situacaoEspecial == situacaoEspecial &&
      other.dataSituacaoEspecial == dataSituacaoEspecial &&
      other.url == url &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return cnpj.hashCode ^
      matriz.hashCode ^
      nomeEmpresarial.hashCode ^
      nomeFantasia.hashCode ^
      motivo.hashCode ^
      enteFederativo.hashCode ^
      natureza.hashCode ^
      cnaePrincipal.hashCode ^
      cnaeSecundario.hashCode ^
      porte.hashCode ^
      municipio.hashCode ^
      cep.hashCode ^
      uf.hashCode ^
      numero.hashCode ^
      complemento.hashCode ^
      logradouro.hashCode ^
      bairro.hashCode ^
      ddd1.hashCode ^
      telefone1.hashCode ^
      email.hashCode ^
      dataAbertura.hashCode ^
      situacaoCadastral.hashCode ^
      dataSituacaoCadastral.hashCode ^
      situacaoEspecial.hashCode ^
      dataSituacaoEspecial.hashCode ^
      url.hashCode ^
      updatedAt.hashCode;
  }
}
