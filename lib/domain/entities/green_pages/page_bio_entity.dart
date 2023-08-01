import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class PageBioEntity {
  String? id;
  String? capa;
  String? logo;
  String? cor;
  bool? showEmail;
  bool? showPhone;
  bool? showDocument;
  bool? showChat;
  bool? showAddress;
  bool? showProduct;
  String? url;
  String? name;
  String? description;
  String? createdAt;
  String? updatedAt;
  CompanyEntity? company;

  PageBioEntity({
    this.id,
    this.capa,
    this.logo,
    this.cor,
    this.showEmail,
    this.showPhone,
    this.showDocument,
    this.showChat,
    this.showAddress,
    this.showProduct,
    this.url,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.company,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'capa': capa,
      'logo': logo,
      'cor': cor,
      'showEmail': showEmail,
      'showPhone': showPhone,
      'showDocument': showDocument,
      'showChat': showChat,
      'showAddress': showAddress,
      'showProduct': showProduct,
      'url': url,
      'name': name,
      'description': description,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'company': company?.toMap(),
    };
  }

  factory PageBioEntity.fromMap(Map<String, dynamic> map) {
    return PageBioEntity(
      id: map['id'] ?? '',
      capa: map['capa'] ?? '',
      logo: map['logo'] ?? '',
      cor: map['cor'] ?? '',
      showEmail: map['showEmail'] ?? map['show_email'] ?? false,
      showPhone: map['showPhone'] ?? map['show_phone'] ?? false,
      showDocument: map['showDocument'] ?? map['show_document'] ?? false,
      showChat: map['showChat'] ?? map['show_chat'] ?? false,
      showAddress: map['showAddress'] ?? map['show_address'] ?? false,
      showProduct: map['showProduct'] ?? map['show_product'] ?? false,
      url: map['url'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      createdAt: map['createdAt'] ??  map['created_at'] ?? '',
      updatedAt: map['updatedAt'] ??  map['created_at'] ?? '',
      // company: map['companyId'] ??  map['company_id'] ?? map['company'],
      company: map['company_id'] != null ? CompanyEntity.fromMap(map['company_id']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PageBioEntity.fromJson(String source) => PageBioEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PageBioEntity &&
      other.id == id &&
      other.capa == capa &&
      other.logo == logo &&
      other.cor == cor &&
      other.showEmail == showEmail &&
      other.showPhone == showPhone &&
      other.showDocument == showDocument &&
      other.showChat == showChat &&
      other.showAddress == showAddress &&
      other.showProduct == showProduct &&
      other.url == url &&
      other.name == name &&
      other.description == description &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      capa.hashCode ^
      logo.hashCode ^
      cor.hashCode ^
      showEmail.hashCode ^
      showPhone.hashCode ^
      showDocument.hashCode ^
      showChat.hashCode ^
      showAddress.hashCode ^
      showProduct.hashCode ^
      url.hashCode ^
      name.hashCode ^
      description.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
  
  @override
  String toString() {
    return 'PageBioEntity(id: $id, capa: $capa, logo: $logo, cor: $cor, showEmail: $showEmail, showPhone: $showPhone, showDocument: $showDocument, showChat: $showChat, showAddress: $showAddress, showProduct: $showProduct, url: $url, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
  
  PageBioEntity copyWith({
    String? id,
    String? capa,
    String? logo,
    String? cor,
    bool? showEmail,
    bool? showPhone,
    bool? showDocument,
    bool? showChat,
    bool? showAddress,
    bool? showProduct,
    String? url,
    String? name,
    String? description,
    String? createdAt,
    String? updatedAt,
    CompanyEntity? company,
  }) {
    return PageBioEntity(
      id: id ?? this.id,
      capa: capa ?? this.capa,
      logo: logo ?? this.logo,
      cor: cor ?? this.cor,
      showEmail: showEmail ?? this.showEmail,
      showPhone: showPhone ?? this.showPhone,
      showDocument: showDocument ?? this.showDocument,
      showChat: showChat ?? this.showChat,
      showAddress: showAddress ?? this.showAddress,
      showProduct: showProduct ?? this.showProduct,
      url: url ?? this.url,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      company: company ?? this.company,
    );
  }
}
