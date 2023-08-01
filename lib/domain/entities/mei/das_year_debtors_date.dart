import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class DasYearsDebtorsDateEntity {
  List<DasDataEntity> das;
  DateTime updatedAt;

  DasYearsDebtorsDateEntity({
    required this.das,
    required this.updatedAt,
  });

  DasYearsDebtorsDateEntity copyWith({
    List<DasDataEntity>? das,
    DateTime? updatedAt,
  }) {
    return DasYearsDebtorsDateEntity(
      das: das ?? this.das,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'das': das,
      'updatedAt': updatedAt,
    };
  }

  factory DasYearsDebtorsDateEntity.fromMap(Map<String, dynamic> map) {
    return DasYearsDebtorsDateEntity(
      das: map['das'] == null ? [] : List<DasDataEntity>.from(map['das']?.map((x) => DasDataEntity.fromMap(x))),
      updatedAt: map['updatedAt'] == null ? DateTime.now() : DateTime.parse(map['updatedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DasYearsDebtorsDateEntity.fromJson(String source) => DasYearsDebtorsDateEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DasYearsDebtorsDateEntity(das: $das, updatedAt: $updatedAt)';
  }
}
