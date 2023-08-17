import 'dart:convert';
import 'package:plugin_pjmei_components/domain/domain.dart';

class DasnDeclaration {
  const DasnDeclaration({
    required this.revenueFromTradeAndIndustry,
    required this.serviceProvisionRevenue,
    required this.hasEmployee,
    required this.cnpj,
    required this.year,
    required this.dasn,
  });
  final num revenueFromTradeAndIndustry;
  final num serviceProvisionRevenue;
  final bool hasEmployee;
  final String cnpj;
  final int year;
  final DasnItemEntity dasn;

  DasnDeclaration copyWith({
    num? revenueFromTradeAndIndustry,
    num? serviceProvisionRevenue,
    bool? hasEmployee,
    String? cnpj,
    int? year,
    DasnItemEntity? dasn,
  }) {
    return DasnDeclaration(
      revenueFromTradeAndIndustry: revenueFromTradeAndIndustry ?? this.revenueFromTradeAndIndustry,
      serviceProvisionRevenue: serviceProvisionRevenue ?? this.serviceProvisionRevenue,
      hasEmployee: hasEmployee ?? this.hasEmployee,
      cnpj: cnpj ?? this.cnpj,
      year: year ?? this.year,
      dasn: dasn ?? this.dasn,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'revenueFromTradeAndIndustry': revenueFromTradeAndIndustry,
      'serviceProvisionRevenue': serviceProvisionRevenue,
      'hasEmployee': hasEmployee,
      'cnpj': cnpj,
      'year': year,
      'dasn': dasn.toMap(),
    };
  }

  factory DasnDeclaration.fromMap(Map<String, dynamic> map) {
    return DasnDeclaration(
      revenueFromTradeAndIndustry: map['revenueFromTradeAndIndustry'] ?? 0,
      serviceProvisionRevenue: map['serviceProvisionRevenue'] ?? 0,
      hasEmployee: map['hasEmployee'] ?? false,
      cnpj: map['cnpj'] ?? '',
      year: map['year']?.toInt() ?? 0,
      dasn: DasnItemEntity.fromMap(map['dasn']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DasnDeclaration.fromJson(String source) => DasnDeclaration.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DasnDeclaration(revenueFromTradeAndIndustry: $revenueFromTradeAndIndustry, serviceProvisionRevenue: $serviceProvisionRevenue, hasEmployee: $hasEmployee, cnpj: $cnpj, year: $year, dasn: $dasn)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DasnDeclaration &&
      other.revenueFromTradeAndIndustry == revenueFromTradeAndIndustry &&
      other.serviceProvisionRevenue == serviceProvisionRevenue &&
      other.hasEmployee == hasEmployee &&
      other.cnpj == cnpj &&
      other.year == year &&
      other.dasn == dasn;
  }

  @override
  int get hashCode {
    return revenueFromTradeAndIndustry.hashCode ^
      serviceProvisionRevenue.hashCode ^
      hasEmployee.hashCode ^
      cnpj.hashCode ^
      year.hashCode ^
      dasn.hashCode;
  }
}
