import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class CheckUserEntity {
  CheckUserEntity({
    this.establishment = const [],
    this.companies = const [],
    this.user = const [],
  });

  factory CheckUserEntity.fromMap(Map<String, dynamic> map) {
    return CheckUserEntity(
      establishment: List<EcommerceEntity>.from(
          map['establishment']?.map((x) => EcommerceEntity.fromMap(x))),
      companies: List<CompanyEntity>.from(
          map['companies']?.map((x) => CompanyEntity.fromMap(x))),
      user: List<UserEntity>.from(
          map['user']?.map((x) => UserEntity.fromMap(x))),
    );
  }

  factory CheckUserEntity.fromJson(String source) => CheckUserEntity.fromMap(json.decode(source));
  List<EcommerceEntity> establishment;
  List<CompanyEntity> companies;
  List<UserEntity> user;

  CheckUserEntity copyWith({
    List<EcommerceEntity>? establishment,
    List<CompanyEntity>? companies,
    List<UserEntity>? user,
  }) {
    return CheckUserEntity(
      establishment: establishment ?? this.establishment,
      companies: companies ?? this.companies,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'establishment': establishment.map((x) => x.toMap()).toList(),
      'companies': companies.map((x) => x.toMap()).toList(),
      'user': user.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'CheckUserEntity(establishment: $establishment, companies: $companies, user: $user)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CheckUserEntity &&
        listEquals(other.establishment, establishment) &&
        listEquals(other.companies, companies) &&
        listEquals(other.user, user);
  }

  @override
  int get hashCode =>
      establishment.hashCode ^ companies.hashCode ^ user.hashCode;
}