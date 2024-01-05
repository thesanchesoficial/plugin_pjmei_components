import 'dart:convert';
import 'finance_subcategory_entity.dart';

class FinanceCategoryEntity {
  String? id;
  String? category;
  String? icon;
  List<FinanceSubcategoryEntity>? subcategory;

  FinanceCategoryEntity({this.id, this.category, this.icon, this.subcategory});

  FinanceCategoryEntity copyWith(
    {
      String? id,
      String? category,
      String? icon,
      List<FinanceSubcategoryEntity>? subcategory
    }) {
    return FinanceCategoryEntity(
      id: id ?? this.id,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      subcategory: subcategory ?? this.subcategory);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'category': category,
      'icon': icon,
      'subcategory': subcategory!.map((x) => x.toMap()).toList(),
    };
  }

  factory FinanceCategoryEntity.fromMap(Map<String, dynamic>? map) {
    if (map == null){
      return FinanceCategoryEntity();
    }
    
    return FinanceCategoryEntity(
      id: map['id'] ?? '',
      category: map['name'] ?? map['category'],
      icon: map['icon'] ?? '',
      subcategory: map['subcategory'] != null
          ? List<FinanceSubcategoryEntity>.from(map['subcategory']
              ?.map((x) => FinanceSubcategoryEntity.fromMap(x)))
          : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceCategoryEntity.fromJson(String source) =>
      FinanceCategoryEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceCategoryEntity(category: $category, icon: $icon, subcategory: $subcategory)';
  }
}
