import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class SettingWhiteLabelEntity {
  String companyId;
  String supportId;
  bool forceAuthenticationStart;
  bool disabledPrintscreen;
  String urlWebApplication;
  String redirectOrigin;
  LinkWhiteLabelEntity link;
  EnvironmentWhiteLabelEntity environment;
  SettingWhiteLabelEntity({
    required this.companyId,
    required this.supportId,
    required this.forceAuthenticationStart,
    required this.disabledPrintscreen,
    required this.urlWebApplication,
    required this.redirectOrigin,
    required this.link,
    required this.environment,
  });

  SettingWhiteLabelEntity copyWith({
    String? companyId,
    String? supportId,
    bool? forceAuthenticationStart,
    bool? disabledPrintscreen,
    String? urlWebApplication,
    String? redirectOrigin,
    LinkWhiteLabelEntity? link,
    EnvironmentWhiteLabelEntity? environment,
  }) {
    return SettingWhiteLabelEntity(
      companyId: companyId ?? this.companyId,
      supportId: supportId ?? this.supportId,
      forceAuthenticationStart: forceAuthenticationStart ?? this.forceAuthenticationStart,
      disabledPrintscreen: disabledPrintscreen ?? this.disabledPrintscreen,
      urlWebApplication: urlWebApplication ?? this.urlWebApplication,
      redirectOrigin: redirectOrigin ?? this.redirectOrigin,
      link: link ?? this.link,
      environment: environment ?? this.environment,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyId': companyId,
      'supportId': supportId,
      'forceAuthenticationStart': forceAuthenticationStart,
      'disabledPrintscreen': disabledPrintscreen,
      'urlWebApplication': urlWebApplication,
      'redirectOrigin': redirectOrigin,
      'link': link.toMap(),
      'environment': environment.toMap(),
    };
  }

  factory SettingWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return SettingWhiteLabelEntity(
      companyId: map['companyId'] ?? '',
      supportId: map['supportId'] ?? '',
      forceAuthenticationStart: map['forceAuthenticationStart'] ?? false,
      disabledPrintscreen: map['disabledPrintscreen'] ?? false,
      urlWebApplication: map['urlWebApplication'] ?? '',
      redirectOrigin: map['redirectOrigin'] ?? '',
      link: LinkWhiteLabelEntity.fromMap(map['link']),
      environment: EnvironmentWhiteLabelEntity.fromMap(map['environment']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingWhiteLabelEntity.fromJson(String source) => SettingWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SettingWhiteLabelEntity(companyId: $companyId, supportId: $supportId, forceAuthenticationStart: $forceAuthenticationStart, disabledPrintscreen: $disabledPrintscreen, urlWebApplication: $urlWebApplication, redirectOrigin: $redirectOrigin, link: $link, environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SettingWhiteLabelEntity &&
      other.companyId == companyId &&
      other.supportId == supportId &&
      other.forceAuthenticationStart == forceAuthenticationStart &&
      other.disabledPrintscreen == disabledPrintscreen &&
      other.urlWebApplication == urlWebApplication &&
      other.redirectOrigin == redirectOrigin &&
      other.link == link &&
      other.environment == environment;
  }

  @override
  int get hashCode {
    return companyId.hashCode ^
      supportId.hashCode ^
      forceAuthenticationStart.hashCode ^
      disabledPrintscreen.hashCode ^
      urlWebApplication.hashCode ^
      redirectOrigin.hashCode ^
      link.hashCode ^
      environment.hashCode;
  }
}
