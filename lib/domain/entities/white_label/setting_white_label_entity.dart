import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class SettingWhiteLabelEntity {
  String companyId;
  String supportId;
  LinkWhiteLabelEntity link;
  EnvironmentWhiteLabelEntity environment;
  SettingWhiteLabelEntity({
    required this.companyId,
    required this.supportId,
    required this.link,
    required this.environment,
  });

  SettingWhiteLabelEntity copyWith({
    String? companyId,
    String? supportId,
    LinkWhiteLabelEntity? link,
    EnvironmentWhiteLabelEntity? environment,
  }) {
    return SettingWhiteLabelEntity(
      companyId: companyId ?? this.companyId,
      supportId: supportId ?? this.supportId,
      link: link ?? this.link,
      environment: environment ?? this.environment,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyId': companyId,
      'supportId': supportId,
      'link': link.toMap(),
      'environment': environment.toMap(),
    };
  }

  factory SettingWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return SettingWhiteLabelEntity(
      companyId: map['companyId'] ?? '',
      supportId: map['supportId'] ?? '',
      link: LinkWhiteLabelEntity.fromMap(map['link']),
      environment: EnvironmentWhiteLabelEntity.fromMap(map['environment']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingWhiteLabelEntity.fromJson(String source) => SettingWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SettingWhiteLabelEntity(companyId: $companyId, supportId: $supportId, link: $link, environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SettingWhiteLabelEntity &&
      other.companyId == companyId &&
      other.supportId == supportId &&
      other.link == link &&
      other.environment == environment;
  }

  @override
  int get hashCode {
    return companyId.hashCode ^
      supportId.hashCode ^
      link.hashCode ^
      environment.hashCode;
  }
}
