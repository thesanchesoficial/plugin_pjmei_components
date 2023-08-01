import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/address/address_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/establishment/establishment_entity.dart';

class UserEntity {
  UserEntity({
    this.id,
    this.paymentId,
    this.nome,
    this.email,
    this.telefone,
    this.cpf,
    this.enderecos,
    this.estabelecimentos,
    this.nascimento,
    this.proprietario,
    this.senha,
    this.owner,
    this.createdDate,
    this.authorization,
  });

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'].toString(),
      paymentId: map['payment_id'].toString(),
      nome: map['nome'],
      telefone: map['telefone'],
      proprietario: map['proprietario'],
      senha: map['senha'],
      owner: map['owner'],
      createdDate: map['created_at'],
      cpf: map['cpf'],
      authorization: map['authorization'],
      enderecos: map['endereco'] == null
          ? []
          : List<AddressEntity>.from(
              map['endereco']?.map((x) => AddressEntity.fromMap(x))),
      estabelecimentos: map['estabelecimentos'] == null
          ? []
          : List<EstablishmentEntity>.from(map['estabelecimentos']
              ?.map((x) => EstablishmentEntity.fromMap(x))),
      email: map['email'],
      nascimento: map['nascimento'],
    );
  }

  factory UserEntity.fromJson(String source) =>
      UserEntity.fromMap(json.decode(source));
  String? id;
  String? paymentId;
  String? nome;
  String? telefone;
  String? proprietario;
  String? senha;
  String? owner;
  String? createdDate;
  String? cpf;
  String? authorization;
  List<AddressEntity>? enderecos;
  List<EstablishmentEntity>? estabelecimentos;
  final String? email;
  final String? nascimento;

  @override
  String toString() {
    return 'UserEntity(id: $id, paymentId: $paymentId, nome: $nome, telefone: $telefone, proprietario: $proprietario, senha: $senha, owner: $owner, createdDate: $createdDate, cpf: $cpf, authorization: $authorization, enderecos: $enderecos, estabelecimentos: $estabelecimentos, email: $email, nascimento: $nascimento)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'paymentId': paymentId,
      'nome': nome,
      'telefone': telefone,
      'proprietario': proprietario,
      'senha': senha,
      'owner': owner,
      'createdDate': createdDate,
      'cpf': cpf,
      'authorization': authorization,
      'enderecos': enderecos?.map((x) => x.toMap()).toList(),
      'estabelecimentos': estabelecimentos?.map((x) => x.toMap()).toList(),
      'email': email,
      'nascimento': nascimento,
    };
  }

  String toJson() => json.encode(toMap());

  UserEntity copyWith({
    String? id,
    String? paymentId,
    String? nome,
    String? telefone,
    String? proprietario,
    String? senha,
    String? owner,
    String? createdDate,
    String? cpf,
    String? authorization,
    List<AddressEntity>? enderecos,
    List<EstablishmentEntity>? estabelecimentos,
    String? email,
    String? nascimento,
  }) {
    return UserEntity(
      id: id ?? this.id,
      paymentId: paymentId ?? this.paymentId,
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      proprietario: proprietario ?? this.proprietario,
      senha: senha ?? this.senha,
      owner: owner ?? this.owner,
      createdDate: createdDate ?? this.createdDate,
      cpf: cpf ?? this.cpf,
      authorization: authorization ?? this.authorization,
      enderecos: enderecos ?? this.enderecos,
      estabelecimentos: estabelecimentos ?? this.estabelecimentos,
      email: email ?? this.email,
      nascimento: nascimento ?? this.nascimento,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserEntity &&
        other.id == id &&
        other.paymentId == paymentId &&
        other.nome == nome &&
        other.telefone == telefone &&
        other.proprietario == proprietario &&
        other.senha == senha &&
        other.owner == owner &&
        other.createdDate == createdDate &&
        other.cpf == cpf &&
        other.authorization == authorization &&
        listEquals(other.enderecos, enderecos) &&
        listEquals(other.estabelecimentos, estabelecimentos) &&
        other.email == email &&
        other.nascimento == nascimento;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        paymentId.hashCode ^
        nome.hashCode ^
        telefone.hashCode ^
        proprietario.hashCode ^
        senha.hashCode ^
        owner.hashCode ^
        createdDate.hashCode ^
        cpf.hashCode ^
        authorization.hashCode ^
        enderecos.hashCode ^
        estabelecimentos.hashCode ^
        email.hashCode ^
        nascimento.hashCode;
  }

  bool maiorDeIdade() {
    return true;
    // final DateTime atual = DateTime.now();
    // final DateTime nascidoAte =
    //     DateTime(atual.year - 18, atual.month, atual.day + 1);
    // DateTime? nascimentoUsuario;
    // if (userSM.user.nascimento != null) {
    //   nascimentoUsuario = DateTime.tryParse(userStore.user.nascimento ?? '');
    // }
    // if (nascimentoUsuario == null) {
    //   return false;
    // } else {
    //   return nascimentoUsuario.isBefore(nascidoAte);
    // }
  }
}
