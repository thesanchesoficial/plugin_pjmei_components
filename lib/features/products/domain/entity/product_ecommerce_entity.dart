import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../product_category/domain/entity/product_category_ecommerce_entity.dart';
import '../../../schedule/domain/entity/schedule_entity.dart';

class ProductEcommerceEntity {
  String id;
  String name;
  String description;
  num amount;
  ProductCategoryEcommerceEntity? productCategory;
  bool visibility;
  bool highlight;
  bool legalAge;
  String discountType;
  num discountValue;
  num amountWithDiscount;
  String type;
  List<String> servicesMethods;
  num? serviceDuration;
  int? maxParticipantsByService;
  int? breakBetweenSessions;
  int? itemQuantity;
  List<ScheduleEntity>? schedules;
  ProductEcommerceEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.amount,
    this.productCategory,
    required this.visibility,
    required this.highlight,
    required this.legalAge,
    required this.discountType,
    required this.discountValue,
    required this.amountWithDiscount,
    required this.type,
    required this.servicesMethods,
    this.serviceDuration,
    this.maxParticipantsByService,
    this.breakBetweenSessions,
    this.itemQuantity,
    this.schedules,
  });

  ProductEcommerceEntity copyWith({
    String? id,
    String? name,
    String? description,
    num? amount,
    ProductCategoryEcommerceEntity? productCategory,
    bool? visibility,
    bool? highlight,
    bool? legalAge,
    String? discountType,
    num? discountValue,
    num? amountWithDiscount,
    String? type,
    List<String>? servicesMethods,
    num? serviceDuration,
    int? maxParticipantsByService,
    int? breakBetweenSessions,
    int? itemQuantity,
    List<ScheduleEntity>? schedules,
  }) {
    return ProductEcommerceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      productCategory: productCategory ?? this.productCategory,
      visibility: visibility ?? this.visibility,
      highlight: highlight ?? this.highlight,
      legalAge: legalAge ?? this.legalAge,
      discountType: discountType ?? this.discountType,
      discountValue: discountValue ?? this.discountValue,
      amountWithDiscount: amountWithDiscount ?? this.amountWithDiscount,
      type: type ?? this.type,
      servicesMethods: servicesMethods ?? this.servicesMethods,
      serviceDuration: serviceDuration ?? this.serviceDuration,
      maxParticipantsByService: maxParticipantsByService ?? this.maxParticipantsByService,
      breakBetweenSessions: breakBetweenSessions ?? this.breakBetweenSessions,
      itemQuantity: itemQuantity ?? this.itemQuantity,
      schedules: schedules ?? this.schedules,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'amount': amount,
      'productCategory': productCategory?.toMap(),
      'visibility': visibility,
      'highlight': highlight,
      'legalAge': legalAge,
      'discountType': discountType,
      'discountValue': discountValue,
      'amountWithDiscount': amountWithDiscount,
      'type': type,
      'servicesMethods': servicesMethods,
      'serviceDuration': serviceDuration,
      'maxParticipantsByService': maxParticipantsByService,
      'breakBetweenSessions': breakBetweenSessions,
      'itemQuantity': itemQuantity,
      'schedules': schedules?.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductEcommerceEntity.fromMap(Map<String, dynamic> map) {
    return ProductEcommerceEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      amount: num.tryParse(map['amount'].toString()) ?? 0,
      productCategory: map['productCategory'] != null ? ProductCategoryEcommerceEntity.fromMap(map['productCategory']) : null,
      visibility: map['visibility'] ?? false,
      highlight: map['highlight'] ?? false,
      legalAge: map['legalAge'] ?? false,
      discountType: map['discountType'] ?? 'money',
      discountValue: map['discountValue'] ?? 0,
      amountWithDiscount: map['amountWithDiscount'] ?? 0,
      type: map['type'] ?? '',
      servicesMethods: map['servicesMethods'] == null ? [] : List<String>.from(map['servicesMethods']),
      serviceDuration: map['serviceDuration'],
      maxParticipantsByService: map['maxParticipantsByService']?.toInt(),
      breakBetweenSessions: map['breakBetweenSessions']?.toInt(),
      itemQuantity: map['itemQuantity']?.toInt(),
      schedules: map['schedules'] != null ? List<ScheduleEntity>.from(map['schedules']?.map((x) => ScheduleEntity.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductEcommerceEntity.fromJson(String source) => ProductEcommerceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductEcommerceEntity(id: $id, name: $name, description: $description, amount: $amount, productCategory: $productCategory, visibility: $visibility, highlight: $highlight, legalAge: $legalAge, discountType: $discountType, discountValue: $discountValue, amountWithDiscount: $amountWithDiscount, type: $type, servicesMethods: $servicesMethods, serviceDuration: $serviceDuration, maxParticipantsByService: $maxParticipantsByService, breakBetweenSessions: $breakBetweenSessions, itemQuantity: $itemQuantity, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductEcommerceEntity &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.amount == amount &&
      other.productCategory == productCategory &&
      other.visibility == visibility &&
      other.highlight == highlight &&
      other.legalAge == legalAge &&
      other.discountType == discountType &&
      other.discountValue == discountValue &&
      other.amountWithDiscount == amountWithDiscount &&
      other.type == type &&
      listEquals(other.servicesMethods, servicesMethods) &&
      other.serviceDuration == serviceDuration &&
      other.maxParticipantsByService == maxParticipantsByService &&
      other.breakBetweenSessions == breakBetweenSessions &&
      other.itemQuantity == itemQuantity &&
      listEquals(other.schedules, schedules);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      amount.hashCode ^
      productCategory.hashCode ^
      visibility.hashCode ^
      highlight.hashCode ^
      legalAge.hashCode ^
      discountType.hashCode ^
      discountValue.hashCode ^
      amountWithDiscount.hashCode ^
      type.hashCode ^
      servicesMethods.hashCode ^
      serviceDuration.hashCode ^
      maxParticipantsByService.hashCode ^
      breakBetweenSessions.hashCode ^
      itemQuantity.hashCode ^
      schedules.hashCode;
  }
}
