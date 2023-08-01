import 'dart:convert';
import 'package:plugin_pjmei_components/domain/domain.dart';

class CompanyEntity {
  CompanyEntity({
    this.id,
    this.razaoSocial,
    this.nomeFantasia,
    this.cnpj,
    this.telefone,
    this.email,
    this.inicioDasAtividades,
    this.cnaeFiscal,
    this.cnaeSecundario,
    this.porte,
    this.createdAt,
    this.updatedAt,
    this.paymentId,
    this.estabelecimento,
    this.plan,
  });

  factory CompanyEntity.fromMap(Map<String, dynamic> map) {
    return CompanyEntity(
      id: map['id'] ?? '',
      razaoSocial: map['razaoSocial'] ?? map['razão_social'],
      nomeFantasia: map['nomeFantasia'] ?? map['nome_fantasia'],
      cnpj: map['cnpj'] ?? '',
      telefone: map['telefone'] ?? '',
      email: map['email'] ?? '',
      inicioDasAtividades:
          map['inicioDasAtividades'] ?? map['inicio_das_atividades'],
      cnaeFiscal: map['cnaeFiscal'] ?? map['cnae_fiscal'],
      cnaeSecundario: map['cnaeSecundario'] == null
          ? []
          : List<String>.from(map['cnaeSecundario'] ?? map['cnae_secundario']),
      porte: map['porte'] ?? '',
      createdAt: map['createdAt'] ?? map['created_at'],
      updatedAt: map['updatedAt'] ?? map['updated_at'],
      paymentId: map['paymentId'] ?? map['payment_id'],
      estabelecimento: map['estabelecimento'] != null
          ? EstablishmentEntity.fromMap(map['estabelecimento'])
          : null,
      plan: map['plan'] != null ? PlanEntity.fromMap(map['plan']) : null,
    );
  }

  factory CompanyEntity.fromJson(String source) =>
      CompanyEntity.fromMap(json.decode(source));
  String? id;
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;
  String? telefone;
  String? email;
  String? inicioDasAtividades;
  String? cnaeFiscal;
  List<String>? cnaeSecundario;
  String? porte;
  String? createdAt;
  String? updatedAt;
  String? paymentId;
  EstablishmentEntity? estabelecimento;
  PlanEntity? plan;

  CompanyEntity copyWith({
    String? id,
    String? razaoSocial,
    String? nomeFantasia,
    String? cnpj,
    String? telefone,
    String? email,
    String? inicioDasAtividades,
    String? cnaeFiscal,
    List<String>? cnaeSecundario,
    String? porte,
    String? createdAt,
    String? updatedAt,
    String? paymentId,
    EstablishmentEntity? estabelecimento,
    PlanEntity? plan,
  }) {
    return CompanyEntity(
      id: id ?? this.id,
      razaoSocial: razaoSocial ?? this.razaoSocial,
      nomeFantasia: nomeFantasia ?? this.nomeFantasia,
      cnpj: cnpj ?? this.cnpj,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
      inicioDasAtividades: inicioDasAtividades ?? this.inicioDasAtividades,
      cnaeFiscal: cnaeFiscal ?? this.cnaeFiscal,
      cnaeSecundario: cnaeSecundario ?? this.cnaeSecundario,
      porte: porte ?? this.porte,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      paymentId: paymentId ?? this.paymentId,
      estabelecimento: estabelecimento ?? this.estabelecimento,
      plan: plan ?? this.plan,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'razaoSocial': razaoSocial,
      'nomeFantasia': nomeFantasia,
      'cnpj': cnpj,
      'telefone': telefone,
      'email': email,
      'inicioDasAtividades': inicioDasAtividades,
      'cnaeFiscal': cnaeFiscal,
      'cnaeSecundario': cnaeSecundario,
      'porte': porte,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'paymentId': paymentId,
      'estabelecimento': estabelecimento?.toMap(),
      'plan': plan?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'CompanyEntity(id: $id, razaoSocial: $razaoSocial, nomeFantasia: $nomeFantasia, cnpj: $cnpj, telefone: $telefone, email: $email, inicioDasAtividades: $inicioDasAtividades, cnaeFiscal: $cnaeFiscal, cnaeSecundario: $cnaeSecundario, porte: $porte, createdAt: $createdAt, updatedAt: $updatedAt, paymentId: $paymentId,)';
  }
}
