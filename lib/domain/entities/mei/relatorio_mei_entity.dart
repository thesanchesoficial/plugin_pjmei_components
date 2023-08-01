import 'dart:convert';

class RelatorioMeiEntity {

  RelatorioMeiEntity({
    this.service_provision,
    this.merchandise_resale,
    this.industrialized_products,
    this.total_report_income,
    this.total_merchandise_resale,
    this.merchandise_resale_nf,
    this.industrialized_products_nf,
    this.total_industrialized_products,
    this.service_provision_nf,
    this.total_service_provision,
  });

  factory RelatorioMeiEntity.fromMap(Map<dynamic, dynamic> map) {
    return RelatorioMeiEntity(
      service_provision: num.tryParse(map['service_provision'].toString()) ?? 0,
      merchandise_resale: num.tryParse(map['merchandise_resale'].toString()) ?? 0,
      industrialized_products: num.tryParse(map['industrialized_products'].toString()) ?? 0,
      total_report_income: num.tryParse(map['total_report_income'].toString()) ?? 0,
      merchandise_resale_nf: num.tryParse(map['merchandise_resale_nf'].toString()) ?? 0,
      total_merchandise_resale: num.tryParse(map['total_merchandise_resale'].toString()) ?? 0,
      industrialized_products_nf: num.tryParse(map['industrialized_products_nf'].toString()) ?? 0,
      total_industrialized_products: num.tryParse(map['total_industrialized_products'].toString()) ?? 0,
      service_provision_nf: num.tryParse(map['service_provision_nf'].toString()) ?? 0,
      total_service_provision: num.tryParse(map['total_service_provision'].toString()) ?? 0,
    );
  }

  factory RelatorioMeiEntity.fromJson(String source) =>
      RelatorioMeiEntity.fromMap(json.decode(source));
  num? service_provision;
  num? merchandise_resale;
  num? industrialized_products;
  num? total_report_income;

  num? merchandise_resale_nf;
  num? total_merchandise_resale;
  num? industrialized_products_nf;
  num? total_industrialized_products;
  num? service_provision_nf;
  num? total_service_provision;

  RelatorioMeiEntity copyWith({
    num? service_provision,
    num? merchandise_resale,
    num? industrialized_products,
    num? total_report_income,
    num? merchandise_resale_nf,
    num? total_merchandise_resale,
    num? industrialized_products_nf,
    num? total_industrialized_products,
    num? service_provision_nf,
    num? total_service_provision,
  }) {
    return RelatorioMeiEntity(
      service_provision: service_provision ?? this.service_provision,
      merchandise_resale: merchandise_resale ?? this.merchandise_resale,
      industrialized_products: industrialized_products ?? this.industrialized_products,
      total_report_income: total_report_income ?? this.total_report_income,

      merchandise_resale_nf: merchandise_resale_nf ?? this.merchandise_resale_nf,
      total_merchandise_resale: total_merchandise_resale ?? this.total_merchandise_resale,
      industrialized_products_nf: industrialized_products_nf ?? this.industrialized_products_nf,
      total_industrialized_products: total_industrialized_products ?? this.total_industrialized_products,
      service_provision_nf: service_provision_nf ?? this.service_provision_nf,
      total_service_provision: total_service_provision ?? this.total_service_provision,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'service_provision': service_provision,
      'merchandise_resale': merchandise_resale,
      'industrialized_products': industrialized_products,
      'total_report_income': total_report_income,

      'merchandise_resale_nf': merchandise_resale_nf,
      'total_merchandise_resale': total_merchandise_resale,
      'industrialized_products_nf': industrialized_products_nf,
      'total_industrialized_products': total_industrialized_products,
      'service_provision_nf': service_provision_nf,
      'total_service_provision': total_service_provision,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'RelatorioMeiEntity(service_provision: $service_provision, merchandise_resale: $merchandise_resale, industrialized_products: $industrialized_products, total_report_income: $total_report_income)';
  }
}