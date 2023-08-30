import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ResourceWhiteLabelEntity {
  ItemResourceWhiteLabelEntity individual;
  ItemResourceWhiteLabelEntity company;
  ResourceWhiteLabelEntity({
    required this.individual,
    required this.company,
  });

  ResourceWhiteLabelEntity copyWith({
    ItemResourceWhiteLabelEntity? individual,
    ItemResourceWhiteLabelEntity? company,
  }) {
    return ResourceWhiteLabelEntity(
      individual: individual ?? this.individual,
      company: company ?? this.company,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'individual': individual.toMap(),
      'company': company.toMap(),
    };
  }

  factory ResourceWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return ResourceWhiteLabelEntity(
      individual: ItemResourceWhiteLabelEntity.fromMap(map['individual']),
      company: ItemResourceWhiteLabelEntity.fromMap(map['company']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ResourceWhiteLabelEntity.fromJson(String source) => ResourceWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() => 'EnvironmentWhiteLabelEntity(individual: $individual, company: $company)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ResourceWhiteLabelEntity &&
      other.individual == individual &&
      other.company == company;
  }

  @override
  int get hashCode => individual.hashCode ^ company.hashCode;
}
