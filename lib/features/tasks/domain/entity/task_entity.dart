import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../../../contacts/domain/entity/contact_entity.dart';

class TaskEntity {
  String? id;
  String title;
  String? description;
  String status;
  String startDate;
  String? endDate;
  String? companyId;
  List<String>? contactId;
  List<ContactEntity>? contacts;
  
  TaskEntity({
    this.id,
    required this.title,
    this.description,
    required this.status,
    required this.startDate,
    this.endDate,
    this.companyId,
    this.contactId,
    this.contacts,
  });

  TaskEntity copyWith({
    String? id,
    String? title,
    String? description,
    String? status,
    String? startDate,
    String? endDate,
    String? companyId,
    List<String>? contactId,
    List<ContactEntity>? contacts,
  }) {
    return TaskEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      companyId: companyId ?? this.companyId,
      contactId: contactId ?? this.contactId,
      contacts: contacts ?? this.contacts,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'status': status,
      'startDate': startDate,
      'endDate': endDate,
      'companyId': companyId,
      'contactId': contactId,
      'contacts': contacts?.map((x) => x.toMap()).toList(),
    };
  }

  factory TaskEntity.fromMap(Map<String, dynamic> map) {
    return TaskEntity(
      id: map['id'],
      title: map['title'] ?? '',
      description: map['description'],
      status: map['status'] ?? '',
      startDate: map['startDate'] ?? '',
      endDate: map['endDate'],
      companyId: map['companyId'],
      contactId: map['contactId'] == null ? null : List<String>.from(map['contactId']),
      contacts: map['contacts'] != null ? List<ContactEntity>.from(map['contacts']?.map((x) => ContactEntity.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskEntity.fromJson(String source) => TaskEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TaskEntity(id: $id, title: $title, description: $description, status: $status, startDate: $startDate, endDate: $endDate, companyId: $companyId, contactId: $contactId, contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TaskEntity &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.status == status &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.companyId == companyId &&
      listEquals(other.contactId, contactId) &&
      listEquals(other.contacts, contacts);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      status.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      companyId.hashCode ^
      contactId.hashCode ^
      contacts.hashCode;
  }
}
