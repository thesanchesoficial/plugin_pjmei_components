import 'dart:convert';

import 'package:flutter/foundation.dart';

class CardEntity {
  String? id;
  String title;
  String description;
  String displayType;
  num index;
  Map<String, String> image;
  String route;
  String category;
  Map<String, dynamic> params;
  
  CardEntity({
    this.id,
    required this.title,
    required this.description,
    required this.displayType,
    required this.index,
    required this.image,
    required this.route,
    required this.category,
    required this.params,
  });

  CardEntity copyWith({
    String? id,
    String? title,
    String? description,
    String? displayType,
    num? index,
    Map<String, String>? image,
    String? route,
    String? category,
    Map<String, dynamic>? params,
  }) {
    return CardEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      displayType: displayType ?? this.displayType,
      index: index ?? this.index,
      image: image ?? this.image,
      route: route ?? this.route,
      category: category ?? this.category,
      params: params ?? this.params,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'displayType': displayType,
      'index': index,
      'image': image,
      'route': route,
      'category': category,
      'params': params,
    };
  }

  factory CardEntity.fromMap(Map<String, dynamic> map) {
    return CardEntity(
      id: map['id'],
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      displayType: map['displayType'] ?? '',
      index: map['index'] ?? 0,
      image: Map<String, String>.from(map['image']),
      route: map['route'] ?? '',
      category: map['category'] ?? '',
      params: Map<String, dynamic>.from(map['params']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CardEntity.fromJson(String source) => CardEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CardEntity(id: $id, title: $title, description: $description, displayType: $displayType, index: $index, image: $image, route: $route, category: $category, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CardEntity &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.displayType == displayType &&
      other.index == index &&
      mapEquals(other.image, image) &&
      other.route == route &&
      other.category == category &&
      mapEquals(other.params, params);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      displayType.hashCode ^
      index.hashCode ^
      image.hashCode ^
      route.hashCode ^
      category.hashCode ^
      params.hashCode;
  }
}
