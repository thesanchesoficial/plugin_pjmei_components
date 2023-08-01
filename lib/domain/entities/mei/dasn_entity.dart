import 'dart:convert';

class DasnEntity {
  String? status;
  String? type;
  num? year;
  num? revenueFromTradeAndIndustry;
  num? serviceProvisionRevenue;
  bool? hasEmployee;
  bool? extinction;
  String? url;
  String? dateLow;
  String? deadline;
  DasnEntity? dasnYearData;

  DasnEntity({
    this.status,
    this.type,
    this.year,
    this.revenueFromTradeAndIndustry,
    this.serviceProvisionRevenue,
    this.hasEmployee,
    this.extinction,
    this.url,
    this.dateLow,
    this.deadline,
    this.dasnYearData,
  });

  DasnEntity copyWith({
    String? status,
    String? type,
    num? year,
    num? revenueFromTradeAndIndustry,
    num? serviceProvisionRevenue,
    bool? hasEmployee,
    bool? extinction,
    String? url,
    String? dateLow,
    String? deadline,
    DasnEntity? dasnYearData,
  }) {
    return DasnEntity(
      status: status ?? this.status,
      type: type ?? this.type,
      year: year ?? this.year,
      revenueFromTradeAndIndustry: revenueFromTradeAndIndustry ?? this.revenueFromTradeAndIndustry,
      serviceProvisionRevenue: serviceProvisionRevenue ?? this.serviceProvisionRevenue,
      hasEmployee: hasEmployee ?? this.hasEmployee,
      extinction: extinction ?? this.extinction,
      url: url ?? this.url,
      dateLow: dateLow ?? this.dateLow,
      deadline: deadline ?? this.deadline,
      dasnYearData: dasnYearData ?? this.dasnYearData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      // 'status': status,
      // 'type': type,
      // 'year': year,
      'revenueFromTradeAndIndustry': revenueFromTradeAndIndustry,
      'serviceProvisionRevenue': serviceProvisionRevenue,
      'hasEmployee': hasEmployee,
      'extinction': extinction,
      // 'url': url,
      'dateLow': dateLow,
      // 'deadline': deadline,
    };
  }

  factory DasnEntity.fromMap(Map<String, dynamic> map) {
    return DasnEntity(
      status: map['status'] ?? '',
      type: map['type'] ?? '',
      year: num.parse(map['year'].toString()),
      revenueFromTradeAndIndustry: num.parse((map['revenueFromTradeAndIndustry'] ?? 0).toString()),
      serviceProvisionRevenue: num.parse((map['serviceProvisionRevenue'] ?? 0).toString()),
      hasEmployee: map['hasEmployee'] ?? false,
      extinction: map['extinction'] ?? false,
      url: map['url'] ?? '',
      dateLow: map['dateLow'] ?? '',
      deadline: map['deadline'] ?? '',
      dasnYearData: map['dasnYearData'] == null ? null : DasnEntity.fromMap(map['dasnYearData']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DasnEntity.fromJson(String source) => DasnEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DasnEntity(status: $status, type: $type, year: $year, revenueFromTradeAndIndustry: $revenueFromTradeAndIndustry, serviceProvisionRevenue: $serviceProvisionRevenue, hasEmployee: $hasEmployee, extinction: $extinction, url: $url, dateLow: $dateLow, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DasnEntity &&
      other.status == status &&
      other.type == type &&
      other.year == year &&
      other.revenueFromTradeAndIndustry == revenueFromTradeAndIndustry &&
      other.serviceProvisionRevenue == serviceProvisionRevenue &&
      other.hasEmployee == hasEmployee &&
      other.extinction == extinction &&
      other.url == url &&
      other.dateLow == dateLow &&
      other.dasnYearData == dasnYearData &&
      other.deadline == deadline;
  }

  @override
  int get hashCode {
    return status.hashCode ^
      type.hashCode ^
      year.hashCode ^
      revenueFromTradeAndIndustry.hashCode ^
      serviceProvisionRevenue.hashCode ^
      hasEmployee.hashCode ^
      extinction.hashCode ^
      url.hashCode ^
      dateLow.hashCode ^
      dasnYearData.hashCode ^
      deadline.hashCode;
  }
}
