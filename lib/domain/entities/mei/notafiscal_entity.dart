import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class NotaFiscalEntity {
  NfDocumentEntity? document;
  String? description;
  String? servicetype;
  num? value;
  String? company_id;
  String? link;
  String? id;
  bool? status;
  String? date;
  NotaFiscalEntity({
    this.description,
    this.servicetype,
    this.value,
    this.company_id,
    this.document,
    this.link,
    this.date,
    this.id,
    this.status,
  });

  NotaFiscalEntity copyWith({
    NfDocumentEntity? document,
    String? description,
    String? servicetype,
    num? value,
    String? company_id,
    String? id,
    String? link,
    bool? status,
    String? date,
  }) {
    return NotaFiscalEntity(
      document: document ?? this.document,
      description: description ?? this.description,
      servicetype: servicetype ?? this.servicetype,
      value: value ?? this.value,
      company_id: company_id ?? this.company_id,
      id: id ?? this.id,
      link: link ?? this.link,
      date: date ?? this.date,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document': document?.toMap(),
      'description': description,
      'service_type': servicetype,
      'value': value,
      'company_id': company_id,
      'id': id,
      'link': link,
      'status': status,
      'date': date
    };
  }

  factory NotaFiscalEntity.fromMap(Map<String, dynamic> map) {
    return NotaFiscalEntity(
      document: NfDocumentEntity.fromMap(map['document'] as Map<String, dynamic>),
      description: map['description'] as String,
      servicetype: map['service_type'] as String,
      value: map['value'] as num,
      company_id: map['company_id'] as String,
      id: map['id'] as String,
      link: map['link'] as String,
      status: map['status'] as bool,
      date: map['created_at'] as String
    );
  }

  String toJson() => json.encode(toMap());

  factory NotaFiscalEntity.fromJson(String source) =>
      NotaFiscalEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NotaFiscalEntity(description: $description, servicetype: $servicetype, value: $value, company_id: $company_id)';
  }
}
