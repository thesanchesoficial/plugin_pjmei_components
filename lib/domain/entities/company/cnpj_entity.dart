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
      cnpjBasico: map['cnpjBasico'] as String,
      cnpjOrdem: map['cnpjOrdem'] as String,
      cnpjDv: map['cnpjDv'] as String,
      matriz: map['matriz'] as String,
      nomeFantasia: map['nomeFantasia'] as String,
      razaoSocial: map['razaoSocial'] as String,
      motivo: map['motivo'] as String,
      enteFederativo: map['enteFederativo'] as String,
      natureza: map['natureza'] as String,
      cnaePrincipal:
          CnaeEntity.fromMap(map['cnaePrincipal'] as Map<String, dynamic>),
      cnaeSecundario: List<CnaeEntity>.from(
        (map['cnaeSecundario'] as List<int>).map<CnaeEntity>(
          (x) => CnaeEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      porte: map['porte'] as String,
      municipio: map['municipio'] as String,
      cep: map['cep'] as String,
      uf: map['uf'] as String,
      numero: map['numero'] as String,
      complemento: map['complemento'] as String,
      logradouro: map['logradouro'] as String,
      bairro: map['bairro'] as String,
      ddd1: map['ddd1'] as String,
      telefone1: map['telefone1'] as String,
      email: map['email'] as String,
      dataInicio: map['dataInicio'] as String,
      situacao: map['situacao'] as String,
      dataSituacao: map['dataSituacao'] as String,
      situacaoEsp: map['situacaoEsp'] as String,
      dataSituacaoEsp: map['dataSituacaoEsp'] as String,
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
