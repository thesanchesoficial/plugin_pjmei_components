import 'dart:convert';
import 'package:flutter/foundation.dart';

import '../../../company/domain/entity/company_entity.dart';
import '../../../ecommerce/domain/entity/ecommerce_entity.dart';
import '../../../user/domain/entity/user_entity.dart';

class CheckUserEntity {
  CheckUserEntity({
    this.ecommerce = const [],
    this.company = const [],
    this.user = const [],
  });

  factory CheckUserEntity.fromMap(Map<String, dynamic> map) {
    return CheckUserEntity(
      ecommerce: map['ecommerce'] == null ? [] : List<EcommerceEntity>.from(map['ecommerce']?.map((x) => EcommerceEntity.fromMap(x))),
      company: map['company'] == null ? [] : List<CompanyEntity>.from(map['company']?.map((x) => CompanyEntity.fromMap(x))),
      user: map['user'] == null ? [] : List<UserEntity>.from(map['user']?.map((x) => UserEntity.fromMap(x))),
    );
  }

  factory CheckUserEntity.fromJson(String source) => CheckUserEntity.fromMap(json.decode(source));
  List<EcommerceEntity> ecommerce;
  List<CompanyEntity> company;
  List<UserEntity> user;

  CheckUserEntity copyWith({
    List<EcommerceEntity>? ecommerce,
    List<CompanyEntity>? company,
    List<UserEntity>? user,
  }) {
    return CheckUserEntity(
      ecommerce: ecommerce ?? this.ecommerce,
      company: company ?? this.company,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ecommerce': ecommerce.map((x) => x.toMap()).toList(),
      'company': company.map((x) => x.toMap()).toList(),
      'user': user.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'CheckUserEntity(ecommerce: $ecommerce, company: $company, user: $user)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CheckUserEntity &&
        listEquals(other.ecommerce, ecommerce) &&
        listEquals(other.company, company) &&
        listEquals(other.user, user);
  }

  @override
  int get hashCode =>
      ecommerce.hashCode ^ company.hashCode ^ user.hashCode;
}