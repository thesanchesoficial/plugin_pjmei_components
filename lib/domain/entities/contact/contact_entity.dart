import 'dart:convert';

import 'package:flutter/foundation.dart';

class ContactEntity {
  
  ContactEntity({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.labels,
    this.description,
    this.empresa,
  });

  factory ContactEntity.fromMap(Map<String, dynamic> map) {
    return ContactEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] == null ? [] : List<String>.from(map['phone']),
      labels: map['labels'] == null ? [] : List<String>.from(map['labels']),
      description: map['description'] ?? '',
      empresa: map['empresa'] ?? map['company'] ?? '',
    );
  }

  factory ContactEntity.fromJson(String source) => ContactEntity.fromMap(json.decode(source));
  final String? id;
  final String? name;
  final String? email;
  final List<String>? phone;
  final List<String>? labels;
  final String? description;
  final String? empresa;
  
  ContactEntity copyWith({
    String? id,
    String? name,
    String? email,
    List<String>? phone,
    List<String>? labels,
    String? description,
    String? empresa,
  }) {
    return ContactEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      labels: labels ?? this.labels,
      description: description ?? this.description,
      empresa: empresa ?? this.empresa,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'labels': labels,
      'description': description,
      'empresa': empresa,
      'company': empresa,
      'companyId': empresa,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ContactEntity(id: $id, name: $name, email: $email, phone: $phone, labels: $labels, description: $description, empresa: $empresa)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ContactEntity &&
      other.id == id &&
      other.name == name &&
      other.email == email &&
      listEquals(other.phone, phone) &&
      listEquals(other.labels, labels) &&
      other.description == description &&
      other.empresa == empresa;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      labels.hashCode ^
      description.hashCode ^
      empresa.hashCode;
  }
}
