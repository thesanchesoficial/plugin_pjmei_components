import 'dart:convert';
import 'package:plugin_pjmei_components/domain/domain.dart';

class CompanyEntity {
  String? id;
  String? owner;
  String? createdAt;
  String? updatedAt;
  String fantasyName;
  String corporateName;
  String cnpj;
  String phone;
  String email;
  PlanEntity plan;
  String whiteLabel;
  String? logo;
  String? color;
  String? description;
  EcommerceEntity? ecommerce;
  CompanyEntity({
    this.id,
    this.owner,
    this.createdAt,
    this.updatedAt,
    required this.fantasyName,
    required this.corporateName,
    required this.cnpj,
    required this.phone,
    required this.email,
    required this.plan,
    required this.whiteLabel,
    this.logo,
    this.color,
    this.description,
    this.ecommerce,
  });

  CompanyEntity copyWith({
    String? id,
    String? owner,
    String? createdAt,
    String? updatedAt,
    String? fantasyName,
    String? corporateName,
    String? cnpj,
    String? phone,
    String? email,
    PlanEntity? plan,
    String? whiteLabel,
    String? logo,
    String? color,
    String? description,
    EcommerceEntity? ecommerce,
  }) {
    return CompanyEntity(
      id: id ?? this.id,
      owner: owner ?? this.owner,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      fantasyName: fantasyName ?? this.fantasyName,
      corporateName: corporateName ?? this.corporateName,
      cnpj: cnpj ?? this.cnpj,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      plan: plan ?? this.plan,
      whiteLabel: whiteLabel ?? this.whiteLabel,
      logo: logo ?? this.logo,
      color: color ?? this.color,
      description: description ?? this.description,
      ecommerce: ecommerce ?? this.ecommerce,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'owner': owner,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'fantasyName': fantasyName,
      'corporateName': corporateName,
      'cnpj': cnpj,
      'phone': phone,
      'email': email,
      'plan': plan.toMap(),
      'whiteLabel': whiteLabel,
      'logo': logo,
      'color': color,
      'description': description,
      'ecommerce': ecommerce?.toMap(),
    };
  }

  factory CompanyEntity.fromMap(Map<String, dynamic> map) {
    return CompanyEntity(
      id: map['id'],
      owner: map['owner'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      fantasyName: map['fantasyName'] ?? '',
      corporateName: map['corporateName'] ?? '',
      cnpj: map['cnpj'] ?? '',
      phone: map['phone'] ?? '',
      email: map['email'] ?? '',
      plan: PlanEntity.fromMap(map['plan']),
      whiteLabel: map['whiteLabel'] ?? '',
      logo: map['logo'],
      color: map['color'],
      description: map['description'],
      ecommerce: map['ecommerce'] != null ? EcommerceEntity.fromMap(map['ecommerce']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyEntity.fromJson(String source) => CompanyEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CompanyEntity(id: $id, owner: $owner, createdAt: $createdAt, updatedAt: $updatedAt, fantasyName: $fantasyName, corporateName: $corporateName, cnpj: $cnpj, phone: $phone, email: $email, plan: $plan, whiteLabel: $whiteLabel, logo: $logo, color: $color, description: $description, ecommerce: $ecommerce)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CompanyEntity &&
      other.id == id &&
      other.owner == owner &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.fantasyName == fantasyName &&
      other.corporateName == corporateName &&
      other.cnpj == cnpj &&
      other.phone == phone &&
      other.email == email &&
      other.plan == plan &&
      other.whiteLabel == whiteLabel &&
      other.logo == logo &&
      other.color == color &&
      other.description == description &&
      other.ecommerce == ecommerce;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      owner.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      fantasyName.hashCode ^
      corporateName.hashCode ^
      cnpj.hashCode ^
      phone.hashCode ^
      email.hashCode ^
      plan.hashCode ^
      whiteLabel.hashCode ^
      logo.hashCode ^
      color.hashCode ^
      description.hashCode ^
      ecommerce.hashCode;
  }
}
