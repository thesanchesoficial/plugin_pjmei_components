import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class EnvironmentWhiteLabelEntity {
  ItemEnvironmentWhiteLabelEntity individual;
  ItemEnvironmentWhiteLabelEntity company;
  EnvironmentWhiteLabelEntity({
    required this.individual,
    required this.company,
  });

  EnvironmentWhiteLabelEntity copyWith({
    ItemEnvironmentWhiteLabelEntity? individual,
    ItemEnvironmentWhiteLabelEntity? company,
  }) {
    return EnvironmentWhiteLabelEntity(
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

  factory EnvironmentWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return EnvironmentWhiteLabelEntity(
      individual: ItemEnvironmentWhiteLabelEntity.fromMap(map['individual']),
      company: ItemEnvironmentWhiteLabelEntity.fromMap(map['company']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EnvironmentWhiteLabelEntity.fromJson(String source) => EnvironmentWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() => 'EnvironmentWhiteLabelEntity(individual: $individual, company: $company)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is EnvironmentWhiteLabelEntity &&
      other.individual == individual &&
      other.company == company;
  }

  @override
  int get hashCode => individual.hashCode ^ company.hashCode;
}
