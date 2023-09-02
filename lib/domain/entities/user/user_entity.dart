import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class UserEntity {
  String id;
  String? paymentId;
  String? paymentStatus;
  String name;
  String? email;
  String? loginEmail;
  String? documentNumber;
  String? documentType;
  String? birth;
  String? phone;
  String? owner;
  List<AddressEntity>? address;
  final String? createdAt;
  final String? updatedAt;
  final String? accessToken;
  final String? refreshToken;
  UserEntity({
    required this.id,
    this.paymentId,
    this.paymentStatus,
    required this.name,
    this.email,
    this.loginEmail,
    this.documentNumber,
    this.documentType,
    this.birth,
    this.phone,
    // this.image,
    this.owner,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.accessToken,
    this.refreshToken,
  });


  bool maiorDeIdade() {
    final DateTime now = DateTime.now();
    final DateTime nascidoAte = DateTime(now.year - 18, now.month, now.day + 1);
    DateTime? nascimentoUsuario;
    if (birth != null) {
      nascimentoUsuario = DateTime.parse(birth!);
    }
    if (nascimentoUsuario == null) {
      return false;
    } else {
      return nascimentoUsuario.isBefore(nascidoAte);
    }
  }

  UserEntity copyWith({
    String? id,
    String? paymentId,
    String? paymentStatus,
    String? name,
    String? email,
    String? loginEmail,
    String? documentNumber,
    String? documentType,
    String? birth,
    String? phone,
    List<ImageEntity>? image,
    String? owner,
    List<AddressEntity>? address,
    String? createdAt,
    String? updatedAt,
    String? accessToken,
    String? refreshToken,
  }) {
    return UserEntity(
      id: id ?? this.id,
      paymentId: paymentId ?? this.paymentId,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      name: name ?? this.name,
      email: email ?? this.email,
      loginEmail: loginEmail ?? this.loginEmail,
      documentNumber: documentNumber ?? this.documentNumber,
      documentType: documentType ?? this.documentType,
      birth: birth ?? this.birth,
      phone: phone ?? this.phone,
      owner: owner ?? this.owner,
      address: address ?? this.address,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'paymentId': paymentId,
      'paymentStatus': paymentStatus,
      'name': name,
      'email': email,
      'loginEmail': loginEmail,
      'documentNumber': documentNumber,
      'documentType': documentType,
      'birth': birth,
      'phone': phone,
      'owner': owner,
      'address': address?.map((x) => x.toMap()).toList(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'] ?? '',
      paymentId: map['paymentId'] ?? map['payment_id'],
      paymentStatus: map['paymentStatus'] ?? map['payment_status'],
      name: map['name'] ?? map['nome'] ?? '',
      email: map['email'],
      loginEmail: map['loginEmail'] ?? map['login_email'],
      documentNumber: map['documentNumber'],
      documentType: map['documentType'],
      birth: map['birth'] ?? map['nascimento'],
      phone: map['phone'] ?? map['telefone'],
      owner: map['owner'] ?? map['id'],
      address: map['address'] != null ? List<AddressEntity>.from(map['address']?.map((x) => AddressEntity.fromMap(x))) : [],
      createdAt: map['createdAt'] ?? map['created_at'],
      updatedAt: map['updatedAt'] ?? map['updated_at'],
      accessToken: map['accessToken'],
      refreshToken: map['refreshToken'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) => UserEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserEntity(id: $id, paymentId: $paymentId, paymentStatus: $paymentStatus, name: $name, email: $email, loginEmail: $loginEmail, documentType: $documentType, documentNumber: $documentNumber, birth: $birth, phone: $phone, owner: $owner, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserEntity &&
      other.id == id &&
      other.paymentId == paymentId &&
      other.paymentStatus == paymentStatus &&
      other.name == name &&
      other.email == email &&
      other.loginEmail == loginEmail &&
      other.documentType == documentType &&
      other.documentNumber == documentNumber &&
      other.birth == birth &&
      other.phone == phone &&
      other.owner == owner &&
      listEquals(other.address, address) &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.accessToken == accessToken &&
      other.refreshToken == refreshToken;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      paymentId.hashCode ^
      paymentStatus.hashCode ^
      name.hashCode ^
      email.hashCode ^
      loginEmail.hashCode ^
      documentType.hashCode ^
      documentNumber.hashCode ^
      birth.hashCode ^
      phone.hashCode ^
      owner.hashCode ^
      address.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      accessToken.hashCode ^
      refreshToken.hashCode;
  }
}
