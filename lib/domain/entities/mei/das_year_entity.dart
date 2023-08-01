import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class DasYearsEntity {

  DasYearsEntity({
    required this.id,
    required this.year,
    required this.cnpj,
    required this.updatedAt,
    this.dasyeardata,
  });

  factory DasYearsEntity.fromMap(Map<String, dynamic> map) {
    return DasYearsEntity(
      id: map['id'] ?? '',
      year: num.tryParse((map['year'] ?? 0).toString()) ?? 2023,
      cnpj: map['cnpj'] ?? '',
      updatedAt: map['updatedAt'] ?? map['updated_at'] ?? '',
      dasyeardata: map['dasyeardata'] == null ? [] : List<DasDataEntity>.from(map['dasyeardata']?.map((x) => DasDataEntity.fromMap(x))),
    );
  }

  factory DasYearsEntity.fromJson(String source) => DasYearsEntity.fromMap(json.decode(source));
  String id;
  num year;
  String cnpj;
  String updatedAt;
  List<DasDataEntity>? dasyeardata;

  DasYearsEntity copyWith({
    String? id,
    num? year,
    String? cnpj,
    String? updatedAt,
    List<DasDataEntity>? dasyeardata,
  }) {
    return DasYearsEntity(
      id: id ?? this.id,
      year: year ?? this.year,
      cnpj: cnpj ?? this.cnpj,
      updatedAt: updatedAt ?? this.updatedAt,
      dasyeardata: dasyeardata ?? this.dasyeardata,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'year': year,
      'cnpj': cnpj,
      'updatedAt': updatedAt,
      'updated_at': updatedAt,
      'dasyeardata': dasyeardata?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DasYearsEntity &&
      other.id == id &&
      other.year == year &&
      other.cnpj == cnpj &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      year.hashCode ^
      cnpj.hashCode ^
      updatedAt.hashCode;
  }

  @override
  String toString() {
    return 'DasYearsEntity(id: $id, year: $year, cnpj: $cnpj, updatedAt: $updatedAt)';
  }
}
