import 'dart:convert';
import 'package:plugin_pjmei_components/domain/domain.dart';

class CnpjEntity {
  String? cnpjBasico;
  String? cnpjOrdem;
  String? cnpjDv;
  String? matriz;
  String? nomeFantasia;
  String? razaoSocial;
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
  String? dataInicio;
  String? situacao;
  String? dataSituacao;
  String? situacaoEsp;
  String? dataSituacaoEsp;

  CnpjEntity({
    this.cnpjBasico,
    this.cnpjOrdem,
    this.cnpjDv,
    this.matriz,
    this.nomeFantasia,
    this.razaoSocial,
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
    this.dataInicio,
    this.situacao,
    this.dataSituacao,
    this.situacaoEsp,
    this.dataSituacaoEsp,
  });

  CnpjEntity copyWith({
    String? cnpjBasico,
    String? cnpjOrdem,
    String? cnpjDv,
    String? matriz,
    String? nomeFantasia,
    String? razaoSocial,
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
    String? dataInicio,
    String? situacao,
    String? dataSituacao,
    String? situacaoEsp,
    String? dataSituacaoEsp,
  }) {
    return CnpjEntity(
      cnpjBasico: cnpjBasico ?? this.cnpjBasico,
      cnpjOrdem: cnpjOrdem ?? this.cnpjOrdem,
      cnpjDv: cnpjDv ?? this.cnpjDv,
      matriz: matriz ?? this.matriz,
      nomeFantasia: nomeFantasia ?? this.nomeFantasia,
      razaoSocial: razaoSocial ?? this.razaoSocial,
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
      dataInicio: dataInicio ?? this.dataInicio,
      situacao: situacao ?? this.situacao,
      dataSituacao: dataSituacao ?? this.dataSituacao,
      situacaoEsp: situacaoEsp ?? this.situacaoEsp,
      dataSituacaoEsp: dataSituacaoEsp ?? this.dataSituacaoEsp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnpjBasico': cnpjBasico,
      'cnpjOrdem': cnpjOrdem,
      'cnpjDv': cnpjDv,
      'matriz': matriz,
      'nomeFantasia': nomeFantasia,
      'razaoSocial': razaoSocial,
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
      'dataInicio': dataInicio,
      'situacao': situacao,
      'dataSituacao': dataSituacao,
      'situacaoEsp': situacaoEsp,
      'dataSituacaoEsp': dataSituacaoEsp,
    };
  }

  factory CnpjEntity.fromMap(Map<String, dynamic> map) {
    return CnpjEntity(
      cnpjBasico: map['cnpjBasico'] ?? map['cnpj_basico'] ?? '',
      cnpjOrdem: map['cnpjOrdem'] ?? map['cnpj_ordem'] ?? '',
      cnpjDv: map['cnpjDv'] ?? map['cnpj_dv'] ?? '',
      matriz: map['matriz'] ?? '',
      nomeFantasia: map['nomeFantasia'] ?? map['nome_fantasia'] ?? '',
      razaoSocial: map['razaoSocial'] ?? map['razao_social'] ?? '',
      motivo: map['motivo'] ?? '',
      enteFederativo: map['enteFederativo'] ?? map['ente_federativo'] ?? '',
      natureza: map['natureza'] ?? '',
      cnaePrincipal: map['cnaePrincipal'] == null ? map['cnae_principal'] == null ? null : CnaeEntity.fromMap(map['cnae_principal']) : CnaeEntity.fromMap(map['cnaePrincipal']),
      cnaeSecundario: map['cnaesSecundario'] == null ? map['cnaes_secundario'] == null ? [] : List<CnaeEntity>.from(map['cnaes_secundario']?.map((x) => CnaeEntity.fromMap(x))) : List<CnaeEntity>.from(map['cnaesSecundario']?.map((x) => CnaeEntity.fromMap(x))),
      porte: map['porte'] ?? '',
      municipio: map['municipio'] ?? '',
      cep: map['cep'] ?? '',
      uf: map['uf'] ?? '',
      numero: map['numero'] ?? '',
      complemento: map['complemento'] ?? '',
      logradouro: map['logradouro'] ?? '',
      bairro: map['bairro'] ?? '',
      ddd1: map['ddd1'] ?? '',
      telefone1: map['telefone1'] ?? '',
      email: map['email'] ?? '',
      dataInicio: map['dataInicio'] ?? map['data_inicio'] ?? '',
      situacao: map['situacao'] ?? '',
      dataSituacao: map['dataSituacao'] ?? map['data_situacao'] ?? '',
      situacaoEsp: map['situacaoEsp'] ?? map['situacao_esp'] ?? '',
      dataSituacaoEsp: map['dataSituacaoEsp'] ?? map['data_situacao_esp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CnpjEntity.fromJson(String source) =>
      CnpjEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CnpjEntity(cnpjBasico: $cnpjBasico, cnpjOrdem: $cnpjOrdem, cnpjDv: $cnpjDv, matriz: $matriz, nomeFantasia: $nomeFantasia, razaoSocial: $razaoSocial, motivo: $motivo, enteFederativo: $enteFederativo, natureza: $natureza, cnaePrincipal: $cnaePrincipal, cnaeSecundario: $cnaeSecundario, porte: $porte, municipio: $municipio, cep: $cep, uf: $uf, numero: $numero, complemento: $complemento, logradouro: $logradouro, bairro: $bairro, ddd1: $ddd1, telefone1: $telefone1, email: $email, dataInicio: $dataInicio, situacao: $situacao, dataSituacao: $dataSituacao, situacaoEsp: $situacaoEsp, dataSituacaoEsp: $dataSituacaoEsp)';
  }
}
