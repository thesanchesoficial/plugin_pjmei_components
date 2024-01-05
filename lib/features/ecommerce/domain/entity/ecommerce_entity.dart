import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../address/domain/entity/address_entity.dart';
import '../../../bank_account/domain/entity/bank_account_entity.dart';
import '../../../schedule/domain/entity/schedule_entity.dart';

class EcommerceEntity {
  String id;
  String name;
  String email;
  String phone;
  String documentType;
  String documentNumber;
  String url;
  bool availableForScheduling;
  bool voucherEnabled;
  bool verified;
  bool acceptPaymentInstallments;
  bool ecommercePaysFees;
  bool visibility;
  bool available;
  bool blocked;
  String type;
  List<String> serviceMethods;
  List<String> tags;
  List<String> paymentMethods;
  num takeoutTime;
  num deliveryTime;
  num preparationTime;
  int? maxParticipantsBySchedule;
  String? description;
  String? color;
  String? logo;
  String? cover;
  String? exchangeAndReturnPolicy;
  String? refundPolicy;
  num? minimumOrderValue;
  num? minimumOrderValueToDeliveryFree;
  List<ScheduleEntity> schedules;
  AddressEntity? address;
  BankAccountEntity? bankAccount;
  EcommerceEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.documentType,
    required this.documentNumber,
    required this.url,
    required this.availableForScheduling,
    required this.voucherEnabled,
    required this.verified,
    required this.acceptPaymentInstallments,
    required this.ecommercePaysFees,
    required this.visibility,
    required this.available,
    required this.blocked,
    required this.type,
    required this.serviceMethods,
    required this.tags,
    required this.paymentMethods,
    required this.takeoutTime,
    required this.deliveryTime,
    required this.preparationTime,
    this.maxParticipantsBySchedule,
    this.description,
    this.color,
    this.logo,
    this.cover,
    this.exchangeAndReturnPolicy,
    this.refundPolicy,
    this.minimumOrderValue,
    this.minimumOrderValueToDeliveryFree,
    required this.schedules,
    this.address,
    this.bankAccount,
  });

  EcommerceEntity copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? documentType,
    String? documentNumber,
    String? url,
    bool? availableForScheduling,
    bool? voucherEnabled,
    bool? verified,
    bool? acceptPaymentInstallments,
    bool? ecommercePaysFees,
    bool? visibility,
    bool? available,
    bool? blocked,
    String? type,
    List<String>? serviceMethods,
    List<String>? tags,
    List<String>? paymentMethods,
    num? takeoutTime,
    num? deliveryTime,
    num? preparationTime,
    int? maxParticipantsBySchedule,
    String? description,
    String? color,
    String? logo,
    String? cover,
    String? exchangeAndReturnPolicy,
    String? refundPolicy,
    num? minimumOrderValue,
    num? minimumOrderValueToDeliveryFree,
    List<ScheduleEntity>? schedules,
    AddressEntity? address,
    BankAccountEntity? bankAccount,
  }) {
    return EcommerceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      documentType: documentType ?? this.documentType,
      documentNumber: documentNumber ?? this.documentNumber,
      url: url ?? this.url,
      availableForScheduling: availableForScheduling ?? this.availableForScheduling,
      voucherEnabled: voucherEnabled ?? this.voucherEnabled,
      verified: verified ?? this.verified,
      acceptPaymentInstallments: acceptPaymentInstallments ?? this.acceptPaymentInstallments,
      ecommercePaysFees: ecommercePaysFees ?? this.ecommercePaysFees,
      visibility: visibility ?? this.visibility,
      available: available ?? this.available,
      blocked: blocked ?? this.blocked,
      type: type ?? this.type,
      serviceMethods: serviceMethods ?? this.serviceMethods,
      tags: tags ?? this.tags,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      takeoutTime: takeoutTime ?? this.takeoutTime,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      preparationTime: preparationTime ?? this.preparationTime,
      maxParticipantsBySchedule: maxParticipantsBySchedule ?? this.maxParticipantsBySchedule,
      description: description ?? this.description,
      color: color ?? this.color,
      logo: logo ?? this.logo,
      cover: cover ?? this.cover,
      exchangeAndReturnPolicy: exchangeAndReturnPolicy ?? this.exchangeAndReturnPolicy,
      refundPolicy: refundPolicy ?? this.refundPolicy,
      minimumOrderValue: minimumOrderValue ?? this.minimumOrderValue,
      minimumOrderValueToDeliveryFree: minimumOrderValueToDeliveryFree ?? this.minimumOrderValueToDeliveryFree,
      schedules: schedules ?? this.schedules,
      address: address ?? this.address,
      bankAccount: bankAccount ?? this.bankAccount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'documentType': documentType,
      'documentNumber': documentNumber,
      'url': url,
      'availableForScheduling': availableForScheduling,
      'voucherEnabled': voucherEnabled,
      'verified': verified,
      'acceptPaymentInstallments': acceptPaymentInstallments,
      'ecommercePaysFees': ecommercePaysFees,
      'visibility': visibility,
      'available': available,
      'blocked': blocked,
      'type': type,
      'serviceMethods': serviceMethods,
      'tags': tags,
      'paymentMethods': paymentMethods,
      'takeoutTime': takeoutTime,
      'deliveryTime': deliveryTime,
      'preparationTime': preparationTime,
      'maxParticipantsBySchedule': maxParticipantsBySchedule,
      'description': description,
      'color': color,
      'logo': logo,
      'cover': cover,
      'exchangeAndReturnPolicy': exchangeAndReturnPolicy,
      'refundPolicy': refundPolicy,
      'minimumOrderValue': minimumOrderValue,
      'minimumOrderValueToDeliveryFree': minimumOrderValueToDeliveryFree,
      'schedules': schedules.map((x) => x.toMap()).toList(),
      'address': address?.toMap(),
      'bankAccount': bankAccount?.toMap(),
    };
  }

  factory EcommerceEntity.fromMap(Map<String, dynamic> map) {
    return EcommerceEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      documentType: map['documentType'] ?? '',
      documentNumber: map['documentNumber'] ?? '',
      url: map['url'] ?? '',
      availableForScheduling: map['availableForScheduling'] ?? false,
      voucherEnabled: map['voucherEnabled'] ?? false,
      verified: map['verified'] ?? false,
      acceptPaymentInstallments: map['acceptPaymentInstallments'] ?? false,
      ecommercePaysFees: map['ecommercePaysFees'] ?? false,
      visibility: map['visibility'] ?? false,
      available: map['available'] ?? false,
      blocked: map['blocked'] ?? false,
      type: map['type'] ?? '',
      serviceMethods: map['serviceMethods'] == null ? [] : List<String>.from(map['serviceMethods']),
      tags: map['tags'] == null ? [] : List<String>.from(map['tags']),
      paymentMethods: map['paymentMethods'] == null ? [] : List<String>.from(map['paymentMethods']),
      takeoutTime: map['takeoutTime'] ?? 0,
      deliveryTime: map['deliveryTime'] ?? 0,
      preparationTime: map['preparationTime'] ?? 0,
      maxParticipantsBySchedule: map['maxParticipantsBySchedule'] ?? 0,
      description: map['description'],
      color: map['color'],
      logo: map['logo'],
      cover: map['cover'],
      exchangeAndReturnPolicy: map['exchangeAndReturnPolicy'],
      refundPolicy: map['refundPolicy'],
      minimumOrderValue: map['minimumOrderValue'],
      minimumOrderValueToDeliveryFree: map['minimumOrderValueToDeliveryFree'],
      schedules: map['schedules'] == null ? [] : List<ScheduleEntity>.from(map['schedules']?.map((x) => ScheduleEntity.fromMap(x))),
      address: map['address'] == null ? null : AddressEntity.fromMap(map['address']),
      bankAccount: map['bankAccount'] != null ? BankAccountEntity.fromMap(map['bankAccount']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EcommerceEntity.fromJson(String source) => EcommerceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EcommerceEntity(id: $id, name: $name, email: $email, phone: $phone, documentType: $documentType, documentNumber: $documentNumber, maxParticipantsBySchedule: $maxParticipantsBySchedule, url: $url, availableForScheduling: $availableForScheduling, voucherEnabled: $voucherEnabled, verified: $verified, acceptPaymentInstallments: $acceptPaymentInstallments, ecommercePaysFees: $ecommercePaysFees, visibility: $visibility, available: $available, blocked: $blocked, type: $type, serviceMethods: $serviceMethods, tags: $tags, paymentMethods: $paymentMethods, takeoutTime: $takeoutTime, deliveryTime: $deliveryTime, preparationTime: $preparationTime, description: $description, color: $color, logo: $logo, cover: $cover, exchangeAndReturnPolicy: $exchangeAndReturnPolicy, refundPolicy: $refundPolicy, minimumOrderValue: $minimumOrderValue, minimumOrderValueToDeliveryFree: $minimumOrderValueToDeliveryFree, schedules: $schedules, address: $address, bankAccount: $bankAccount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is EcommerceEntity &&
      other.id == id &&
      other.name == name &&
      other.email == email &&
      other.phone == phone &&
      other.documentType == documentType &&
      other.documentNumber == documentNumber &&
      other.url == url &&
      other.availableForScheduling == availableForScheduling &&
      other.voucherEnabled == voucherEnabled &&
      other.verified == verified &&
      other.acceptPaymentInstallments == acceptPaymentInstallments &&
      other.ecommercePaysFees == ecommercePaysFees &&
      other.visibility == visibility &&
      other.available == available &&
      other.blocked == blocked &&
      other.type == type &&
      listEquals(other.serviceMethods, serviceMethods) &&
      listEquals(other.tags, tags) &&
      listEquals(other.paymentMethods, paymentMethods) &&
      other.takeoutTime == takeoutTime &&
      other.deliveryTime == deliveryTime &&
      other.preparationTime == preparationTime &&
      other.maxParticipantsBySchedule == maxParticipantsBySchedule &&
      other.description == description &&
      other.color == color &&
      other.logo == logo &&
      other.cover == cover &&
      other.exchangeAndReturnPolicy == exchangeAndReturnPolicy &&
      other.refundPolicy == refundPolicy &&
      other.minimumOrderValue == minimumOrderValue &&
      other.minimumOrderValueToDeliveryFree == minimumOrderValueToDeliveryFree &&
      listEquals(other.schedules, schedules) &&
      other.address == address &&
      other.bankAccount == bankAccount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      documentType.hashCode ^
      documentNumber.hashCode ^
      url.hashCode ^
      availableForScheduling.hashCode ^
      voucherEnabled.hashCode ^
      verified.hashCode ^
      acceptPaymentInstallments.hashCode ^
      ecommercePaysFees.hashCode ^
      visibility.hashCode ^
      available.hashCode ^
      blocked.hashCode ^
      type.hashCode ^
      serviceMethods.hashCode ^
      tags.hashCode ^
      paymentMethods.hashCode ^
      takeoutTime.hashCode ^
      deliveryTime.hashCode ^
      maxParticipantsBySchedule.hashCode ^
      preparationTime.hashCode ^
      description.hashCode ^
      color.hashCode ^
      logo.hashCode ^
      cover.hashCode ^
      exchangeAndReturnPolicy.hashCode ^
      refundPolicy.hashCode ^
      minimumOrderValue.hashCode ^
      minimumOrderValueToDeliveryFree.hashCode ^
      schedules.hashCode ^
      address.hashCode ^
      bankAccount.hashCode;
  }
}
