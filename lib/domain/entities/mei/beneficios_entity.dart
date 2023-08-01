import 'dart:convert';

import 'package:flutter/foundation.dart';

class BeneficiosEntity {
  num? contributionTime;
  DateTime? updatedAt;

  BeneficiosEntity({
    @required this.contributionTime,
    @required this.updatedAt,
  });

  BeneficiosEntity copyWith({
    num? contributionTime,
    DateTime? updatedAt,
  }) {
    return BeneficiosEntity(
      contributionTime: contributionTime ?? this.contributionTime,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'contributionTime': contributionTime,
      'updated_at': updatedAt,
    };
  }

  factory BeneficiosEntity.fromMap(Map<String, dynamic> map) {
    return BeneficiosEntity(
      contributionTime: num.parse(map['contributionTime'].toString()),
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'BeneficiosEntity(contributionTime: $contributionTime, updatedAt: $updatedAt)';
  }
}