import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class SettingWhiteLabelEntity {
  String companyId;
  String supportId;
  bool forceAuthenticationStart;
  bool disabledPrintScreen;
  String urlWebApplication;
  String redirectOrigin;
  LinkWhiteLabelEntity link;
  EnvironmentWhiteLabelEntity environment;
  FunctionalityWhiteLabelEntity functionality;
  SettingWhiteLabelEntity({
    required this.companyId,
    required this.supportId,
    required this.forceAuthenticationStart,
    required this.disabledPrintScreen,
    required this.urlWebApplication,
    required this.redirectOrigin,
    required this.link,
    required this.environment,
    required this.functionality,
  });

  SettingWhiteLabelEntity copyWith({
    String? companyId,
    String? supportId,
    bool? forceAuthenticationStart,
    bool? disabledPrintScreen,
    String? urlWebApplication,
    String? redirectOrigin,
    LinkWhiteLabelEntity? link,
    EnvironmentWhiteLabelEntity? environment,
    FunctionalityWhiteLabelEntity? functionality,
  }) {
    return SettingWhiteLabelEntity(
      companyId: companyId ?? this.companyId,
      supportId: supportId ?? this.supportId,
      forceAuthenticationStart: forceAuthenticationStart ?? this.forceAuthenticationStart,
      disabledPrintScreen: disabledPrintScreen ?? this.disabledPrintScreen,
      urlWebApplication: urlWebApplication ?? this.urlWebApplication,
      redirectOrigin: redirectOrigin ?? this.redirectOrigin,
      link: link ?? this.link,
      environment: environment ?? this.environment,
      functionality: functionality ?? this.functionality,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyId': companyId,
      'supportId': supportId,
      'forceAuthenticationStart': forceAuthenticationStart,
      'disabledPrintscreen': disabledPrintScreen,
      'urlWebApplication': urlWebApplication,
      'redirectOrigin': redirectOrigin,
      'link': link.toMap(),
      'environment': environment.toMap(),
      'functionality': functionality.toMap(),
    };
  }

  factory SettingWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return SettingWhiteLabelEntity(
      companyId: map['companyId'] ?? '',
      supportId: map['supportId'] ?? '',
      forceAuthenticationStart: map['forceAuthenticationStart'] ?? false,
      disabledPrintScreen: map['disabledPrintScreen'] ?? false,
      urlWebApplication: map['urlWebApplication'] ?? '',
      redirectOrigin: map['redirectOrigin'] ?? '',
      link: LinkWhiteLabelEntity.fromMap(map['link']),
      environment: EnvironmentWhiteLabelEntity.fromMap(map['environment']),
      functionality: FunctionalityWhiteLabelEntity.fromMap(map['functionality']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingWhiteLabelEntity.fromJson(String source) => SettingWhiteLabelEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SettingWhiteLabelEntity &&
      other.companyId == companyId &&
      other.supportId == supportId &&
      other.forceAuthenticationStart == forceAuthenticationStart &&
      other.disabledPrintScreen == disabledPrintScreen &&
      other.urlWebApplication == urlWebApplication &&
      other.redirectOrigin == redirectOrigin &&
      other.link == link &&
      other.environment == environment &&
      other.functionality == functionality;
  }

  @override
  int get hashCode {
    return companyId.hashCode ^
      supportId.hashCode ^
      forceAuthenticationStart.hashCode ^
      disabledPrintScreen.hashCode ^
      urlWebApplication.hashCode ^
      redirectOrigin.hashCode ^
      link.hashCode ^
      environment.hashCode ^
      functionality.hashCode;
  }

  @override
  String toString() {
    return 'SettingWhiteLabelEntity(companyId: $companyId, supportId: $supportId, forceAuthenticationStart: $forceAuthenticationStart, disabledPrintScreen: $disabledPrintScreen, urlWebApplication: $urlWebApplication, redirectOrigin: $redirectOrigin, link: $link, environment: $environment, functionality: $functionality)';
  }
}
