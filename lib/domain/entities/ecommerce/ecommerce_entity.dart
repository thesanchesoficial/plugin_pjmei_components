import 'dart:convert';

import 'package:plugin_pjmei_components/domain/domain.dart';

class EcommerceEntity {
  String? id;
  String documentType;
  String documentNumber;
  String? paymentType;
  String? paymentId;
  String? paymentStatus;
  String? email;
  String? phone;
  String url;
  String name;
  String? description;
  String? logo;
  String? cover;
  String? type;
  String? exchangeAndReturnPolicy;
  String? refundPolicy;
  String? createdAt;
  String? updatedAt;
  bool available;
  bool availableForScheduling;
  bool enabled;
  bool voucherEnabled;
  bool verified;
  bool acceptPaymentInstallments;
  num minimumOrderValue;
  num minimumOrderValueToDeliveryFree;
  num takeoutTime;
  num deliveryTime;
  num preparationTime;
  AddressEntity address;
  List? categories;
  List? shifts;
  List? tags;
  List? paymentMethods;
  List? deliveryMethods; // delivery/retirada
  List? deliveryFee; // frete
  EcommerceEntity({
    this.id,
    required this.documentType,
    required this.documentNumber,
    this.paymentType,
    this.paymentId,
    this.paymentStatus,
    this.email,
    this.phone,
    required this.url,
    required this.name,
    this.description,
    this.logo,
    this.cover,
    this.type,
    this.exchangeAndReturnPolicy,
    this.refundPolicy,
    this.createdAt,
    this.updatedAt,
    required this.available,
    required this.availableForScheduling,
    required this.enabled,
    required this.voucherEnabled,
    required this.verified,
    required this.acceptPaymentInstallments,
    required this.minimumOrderValue,
    required this.minimumOrderValueToDeliveryFree,
    required this.takeoutTime,
    required this.deliveryTime,
    required this.preparationTime,
    required this.address,
    this.categories,
    this.shifts,
    this.tags,
    this.paymentMethods,
    this.deliveryMethods,
    this.deliveryFee,
  });
  

  EcommerceEntity copyWith({
    String? id,
    String? documentType,
    String? documentNumber,
    String? paymentType,
    String? paymentId,
    String? paymentStatus,
    String? email,
    String? phone,
    String? url,
    String? name,
    String? description,
    String? logo,
    String? cover,
    String? type,
    String? exchangeAndReturnPolicy,
    String? refundPolicy,
    String? createdAt,
    String? updatedAt,
    bool? available,
    bool? availableForScheduling,
    bool? enabled,
    bool? voucherEnabled,
    bool? verified,
    bool? acceptPaymentInstallments,
    num? minimumOrderValue,
    num? minimumOrderValueToDeliveryFree,
    num? takeoutTime,
    num? deliveryTime,
    num? preparationTime,
    AddressEntity? address,
    List? categories,
    List? shifts,
    List? tags,
    List? paymentMethods,
    List? deliveryMethods,
    List? deliveryFee,
  }) {
    return EcommerceEntity(
      id: id ?? this.id,
      documentType: documentType ?? this.documentType,
      documentNumber: documentNumber ?? this.documentNumber,
      paymentType: paymentType ?? this.paymentType,
      paymentId: paymentId ?? this.paymentId,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      url: url ?? this.url,
      name: name ?? this.name,
      description: description ?? this.description,
      logo: logo ?? this.logo,
      cover: cover ?? this.cover,
      type: type ?? this.type,
      exchangeAndReturnPolicy: exchangeAndReturnPolicy ?? this.exchangeAndReturnPolicy,
      refundPolicy: refundPolicy ?? this.refundPolicy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      available: available ?? this.available,
      availableForScheduling: availableForScheduling ?? this.availableForScheduling,
      enabled: enabled ?? this.enabled,
      voucherEnabled: voucherEnabled ?? this.voucherEnabled,
      verified: verified ?? this.verified,
      acceptPaymentInstallments: acceptPaymentInstallments ?? this.acceptPaymentInstallments,
      minimumOrderValue: minimumOrderValue ?? this.minimumOrderValue,
      minimumOrderValueToDeliveryFree: minimumOrderValueToDeliveryFree ?? this.minimumOrderValueToDeliveryFree,
      takeoutTime: takeoutTime ?? this.takeoutTime,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      preparationTime: preparationTime ?? this.preparationTime,
      address: address ?? this.address,
      categories: categories ?? this.categories,
      shifts: shifts ?? this.shifts,
      tags: tags ?? this.tags,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      deliveryMethods: deliveryMethods ?? this.deliveryMethods,
      deliveryFee: deliveryFee ?? this.deliveryFee,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'documentType': documentType,
      'documentNumber': documentNumber,
      'paymentType': paymentType,
      'paymentId': paymentId,
      'paymentStatus': paymentStatus,
      'email': email,
      'phone': phone,
      'url': url,
      'name': name,
      'description': description,
      'logo': logo,
      'cover': cover,
      'type': type,
      'exchangeAndReturnPolicy': exchangeAndReturnPolicy,
      'refundPolicy': refundPolicy,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'available': available,
      'availableForScheduling': availableForScheduling,
      'enabled': enabled,
      'voucherEnabled': voucherEnabled,
      'verified': verified,
      'acceptPaymentInstallments': acceptPaymentInstallments,
      'minimumOrderValue': minimumOrderValue,
      'minimumOrderValueToDeliveryFree': minimumOrderValueToDeliveryFree,
      'takeoutTime': takeoutTime,
      'deliveryTime': deliveryTime,
      'preparationTime': preparationTime,
      'address': address.toMap(),
      // 'categories': categories?.toMap(),
      // 'shifts': shifts?.toMap(),
      // 'tags': tags?.toMap(),
      // 'paymentMethods': paymentMethods?.toMap(),
      // 'deliveryMethods': deliveryMethods?.toMap(),
      // 'deliveryFee': deliveryFee?.toMap(),
    };
  }

  factory EcommerceEntity.fromMap(Map<String, dynamic> map) {
    return EcommerceEntity(
      id: map['id'],
      documentType: map['documentType'] ?? '',
      documentNumber: map['documentNumber'] ?? '',
      paymentType: map['paymentType'],
      paymentId: map['paymentId'],
      paymentStatus: map['paymentStatus'],
      email: map['email'],
      phone: map['phone'],
      url: map['url'] ?? '',
      name: map['name'] ?? '',
      description: map['description'],
      logo: map['logo'],
      cover: map['cover'],
      type: map['type'],
      exchangeAndReturnPolicy: map['exchangeAndReturnPolicy'],
      refundPolicy: map['refundPolicy'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      available: map['available'] ?? false,
      availableForScheduling: map['availableForScheduling'] ?? false,
      enabled: map['enabled'] ?? false,
      voucherEnabled: map['voucherEnabled'] ?? false,
      verified: map['verified'] ?? false,
      acceptPaymentInstallments: map['acceptPaymentInstallments'] ?? false,
      minimumOrderValue: map['minimumOrderValue'] ?? 0,
      minimumOrderValueToDeliveryFree: map['minimumOrderValueToDeliveryFree'] ?? 0,
      takeoutTime: map['takeoutTime'] ?? 0,
      deliveryTime: map['deliveryTime'] ?? 0,
      preparationTime: map['preparationTime'] ?? 0,
      address: AddressEntity.fromMap(map['address']),
      // categories: map['categories'] != null ? List.fromMap(map['categories']) : null,
      // shifts: map['shifts'] != null ? List.fromMap(map['shifts']) : null,
      // tags: map['tags'] != null ? List.fromMap(map['tags']) : null,
      // paymentMethods: map['paymentMethods'] != null ? List.fromMap(map['paymentMethods']) : null,
      // deliveryMethods: map['deliveryMethods'] != null ? List.fromMap(map['deliveryMethods']) : null,
      // deliveryFee: map['deliveryFee'] != null ? List.fromMap(map['deliveryFee']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EcommerceEntity.fromJson(String source) => EcommerceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EcommerceEntity(id: $id, documentType: $documentType, documentNumber: $documentNumber, paymentType: $paymentType, paymentId: $paymentId, paymentStatus: $paymentStatus, email: $email, phone: $phone, url: $url, name: $name, description: $description, logo: $logo, cover: $cover, type: $type, exchangeAndReturnPolicy: $exchangeAndReturnPolicy, refundPolicy: $refundPolicy, createdAt: $createdAt, updatedAt: $updatedAt, available: $available, availableForScheduling: $availableForScheduling, enabled: $enabled, voucherEnabled: $voucherEnabled, verified: $verified, acceptPaymentInstallments: $acceptPaymentInstallments, minimumOrderValue: $minimumOrderValue, minimumOrderValueToDeliveryFree: $minimumOrderValueToDeliveryFree, takeoutTime: $takeoutTime, deliveryTime: $deliveryTime, preparationTime: $preparationTime, address: $address, categories: $categories, shifts: $shifts, tags: $tags, paymentMethods: $paymentMethods, deliveryMethods: $deliveryMethods, deliveryFee: $deliveryFee)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is EcommerceEntity &&
      other.id == id &&
      other.documentType == documentType &&
      other.documentNumber == documentNumber &&
      other.paymentType == paymentType &&
      other.paymentId == paymentId &&
      other.paymentStatus == paymentStatus &&
      other.email == email &&
      other.phone == phone &&
      other.url == url &&
      other.name == name &&
      other.description == description &&
      other.logo == logo &&
      other.cover == cover &&
      other.type == type &&
      other.exchangeAndReturnPolicy == exchangeAndReturnPolicy &&
      other.refundPolicy == refundPolicy &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.available == available &&
      other.availableForScheduling == availableForScheduling &&
      other.enabled == enabled &&
      other.voucherEnabled == voucherEnabled &&
      other.verified == verified &&
      other.acceptPaymentInstallments == acceptPaymentInstallments &&
      other.minimumOrderValue == minimumOrderValue &&
      other.minimumOrderValueToDeliveryFree == minimumOrderValueToDeliveryFree &&
      other.takeoutTime == takeoutTime &&
      other.deliveryTime == deliveryTime &&
      other.preparationTime == preparationTime &&
      other.address == address &&
      other.categories == categories &&
      other.shifts == shifts &&
      other.tags == tags &&
      other.paymentMethods == paymentMethods &&
      other.deliveryMethods == deliveryMethods &&
      other.deliveryFee == deliveryFee;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      documentType.hashCode ^
      documentNumber.hashCode ^
      paymentType.hashCode ^
      paymentId.hashCode ^
      paymentStatus.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      url.hashCode ^
      name.hashCode ^
      description.hashCode ^
      logo.hashCode ^
      cover.hashCode ^
      type.hashCode ^
      exchangeAndReturnPolicy.hashCode ^
      refundPolicy.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      available.hashCode ^
      availableForScheduling.hashCode ^
      enabled.hashCode ^
      voucherEnabled.hashCode ^
      verified.hashCode ^
      acceptPaymentInstallments.hashCode ^
      minimumOrderValue.hashCode ^
      minimumOrderValueToDeliveryFree.hashCode ^
      takeoutTime.hashCode ^
      deliveryTime.hashCode ^
      preparationTime.hashCode ^
      address.hashCode ^
      categories.hashCode ^
      shifts.hashCode ^
      tags.hashCode ^
      paymentMethods.hashCode ^
      deliveryMethods.hashCode ^
      deliveryFee.hashCode;
  }
}
