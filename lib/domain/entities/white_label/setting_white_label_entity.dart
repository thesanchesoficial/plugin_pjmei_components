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
  ResourceWhiteLabelEntity resource;
  FunctionalityWhiteLabelEntity functionality;
  SettingWhiteLabelEntity({
    required this.companyId,
    required this.supportId,
    required this.forceAuthenticationStart,
    required this.disabledPrintscreen,
    required this.urlWebApplication,
    required this.redirectOrigin,
    required this.link,
    required this.resource,
    required this.functionality,
  });

  SettingWhiteLabelEntity copyWith({
    String? companyId,
    String? supportId,
    bool? forceAuthenticationStart,
    bool? disabledPrintscreen,
    String? urlWebApplication,
    String? redirectOrigin,
    LinkWhiteLabelEntity? link,
    ResourceWhiteLabelEntity? resource,
    FunctionalityWhiteLabelEntity? functionality,
  }) {
    return SettingWhiteLabelEntity(
      companyId: companyId ?? this.companyId,
      supportId: supportId ?? this.supportId,
      forceAuthenticationStart: forceAuthenticationStart ?? this.forceAuthenticationStart,
      disabledPrintscreen: disabledPrintscreen ?? this.disabledPrintscreen,
      urlWebApplication: urlWebApplication ?? this.urlWebApplication,
      redirectOrigin: redirectOrigin ?? this.redirectOrigin,
      link: link ?? this.link,
      resource: resource ?? this.resource,
      functionality: functionality ?? this.functionality,
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
      'resource': resource.toMap(),
      'functionality': functionality.toMap(),
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
      resource: ResourceWhiteLabelEntity.fromMap(map['resource']),
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
      other.disabledPrintscreen == disabledPrintscreen &&
      other.urlWebApplication == urlWebApplication &&
      other.redirectOrigin == redirectOrigin &&
      other.link == link &&
      other.resource == resource &&
      other.functionality == functionality;
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
      resource.hashCode ^
      functionality.hashCode;
  }

  @override
  String toString() {
    return 'SettingWhiteLabelEntity(companyId: $companyId, supportId: $supportId, forceAuthenticationStart: $forceAuthenticationStart, disabledPrintscreen: $disabledPrintscreen, urlWebApplication: $urlWebApplication, redirectOrigin: $redirectOrigin, link: $link, resource: $resource, functionality: $functionality)';
  }
}
