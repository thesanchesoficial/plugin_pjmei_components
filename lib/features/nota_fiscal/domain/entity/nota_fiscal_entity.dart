import 'dart:convert';

class NotaFiscalEntity {
  String? id;
  DocumentNotaFiscal? document;
  String? serviceType;
  String? description;
  num? value;
  bool? status;
  String? link;
  String? companyId;
  String? companyRazaoSocial;
  String? companyCnpj;
  String? createdAt;
  String? date;

  NotaFiscalEntity({
    this.id,
    this.document,
    this.serviceType,
    this.description,
    this.value,
    this.status,
    this.link,
    this.companyId,
    this.companyRazaoSocial,
    this.companyCnpj,
    this.createdAt,
    this.date,
  });
  
  NotaFiscalEntity copyWith({
    String? id,
    DocumentNotaFiscal? document,
    String? serviceType,
    String? description,
    num? value,
    bool? status,
    String? link,
    String? companyId,
    String? companyRazaoSocial,
    String? companyCnpj,
    String? createdAt,
    String? date,
  }) {
    return NotaFiscalEntity(
      id: id ?? this.id,
      document: document ?? this.document,
      serviceType: serviceType ?? this.serviceType,
      description: description ?? this.description,
      value: value ?? this.value,
      status: status ?? this.status,
      link: link ?? this.link,
      companyId: companyId ?? this.companyId,
      companyRazaoSocial: companyRazaoSocial ?? this.companyRazaoSocial,
      companyCnpj: companyCnpj ?? this.companyCnpj,
      createdAt: createdAt ?? this.createdAt,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'document': document?.toMap(),
      'serviceType': serviceType,
      'description': description,
      'value': value,
      'status': status,
      'link': link,
      'companyId': companyId,
      'companyRazaoSocial': companyRazaoSocial,
      'companyCnpj': companyCnpj,
      'createdAt': createdAt,
      'date': date,
    };
  }

  factory NotaFiscalEntity.fromMap(Map<String, dynamic> map) {
    return NotaFiscalEntity(
      id: map['id'],
      document: map['document'] != null ? DocumentNotaFiscal.fromMap(map['document']) : null,
      serviceType: map['service_type'] ?? map['serviceType'],
      description: map['description'],
      value: map['value'],
      status: map['status'],
      link: map['link'],
      companyId: map['company_id'] ?? map['companyId'],
      companyRazaoSocial: map['company_razao_social'] ?? map['companyRazaoSocial'],
      companyCnpj: map['company_cnpj'] ?? map['companyCnpj'],
      createdAt: map['created_at'] ?? map['createdAt'],
      date: map['date'] ?? map['date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NotaFiscalEntity.fromJson(String source) => NotaFiscalEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NotaFiscalEntity(id: $id, document: $document, date: $date, serviceType: $serviceType, description: $description, value: $value, status: $status, link: $link, companyId: $companyId, companyRazaoSocial: $companyRazaoSocial, companyCnpj: $companyCnpj, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NotaFiscalEntity &&
      other.id == id &&
      other.document == document &&
      other.serviceType == serviceType &&
      other.description == description &&
      other.value == value &&
      other.status == status &&
      other.link == link &&
      other.companyId == companyId &&
      other.companyRazaoSocial == companyRazaoSocial &&
      other.companyCnpj == companyCnpj &&
      other.date == date &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      document.hashCode ^
      serviceType.hashCode ^
      description.hashCode ^
      value.hashCode ^
      status.hashCode ^
      link.hashCode ^
      companyId.hashCode ^
      companyRazaoSocial.hashCode ^
      companyCnpj.hashCode ^
      date.hashCode ^
      createdAt.hashCode;
  }
}

class DocumentNotaFiscal {
  String? documentType;
  String? documentNumber;

  DocumentNotaFiscal({
    this.documentType,
    this.documentNumber,
  });

  DocumentNotaFiscal copyWith({
    String? documentType,
    String? documentNumber,
  }) {
    return DocumentNotaFiscal(
      documentType: documentType ?? this.documentType,
      documentNumber: documentNumber ?? this.documentNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'documentType': documentType,
      'documentNumber': documentNumber,
    };
  }

  factory DocumentNotaFiscal.fromMap(Map<String, dynamic> map) {
    return DocumentNotaFiscal(
      documentType: map['documentType'] ?? map['document_type'],
      documentNumber: map['documentNumber'] ?? map['document_number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DocumentNotaFiscal.fromJson(String source) => DocumentNotaFiscal.fromMap(json.decode(source));

  @override
  String toString() => 'DocumentNotaFiscal(documentType: $documentType, documentNumber: $documentNumber)';
}
