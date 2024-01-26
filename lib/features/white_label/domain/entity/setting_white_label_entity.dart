import 'dart:convert';

import 'environment_white_label_entity.dart';
import 'functionality_white_label_entity.dart';
import 'link_white_label_entity.dart';

class SettingWhiteLabelEntity {
  String companyId;
  String ecommerceId;
  bool forceAuthenticationStart;
  bool disabledPrintScreen;
  bool planRequired;
  String urlWebApplication;
  String? linkAppleStore;
  String? linkGooglePlay;
  String redirectOrigin;
  LinkWhiteLabelEntity link;
  EnvironmentWhiteLabelEntity environment;
  FunctionalityWhiteLabelEntity functionality;
  SettingWhiteLabelEntity({
    required this.companyId,
    required this.ecommerceId,
    required this.forceAuthenticationStart,
    required this.disabledPrintScreen,
    required this.planRequired,
    required this.urlWebApplication,
    this.linkAppleStore,
    this.linkGooglePlay,
    required this.redirectOrigin,
    required this.link,
    required this.environment,
    required this.functionality,
  });

  SettingWhiteLabelEntity copyWith({
    String? companyId,
    String? ecommerceId,
    bool? forceAuthenticationStart,
    bool? disabledPrintScreen,
    bool? planRequired,
    String? urlWebApplication,
    String? linkAppleStore,
    String? linkGooglePlay,
    String? redirectOrigin,
    LinkWhiteLabelEntity? link,
    EnvironmentWhiteLabelEntity? environment,
    FunctionalityWhiteLabelEntity? functionality,
  }) {
    return SettingWhiteLabelEntity(
      companyId: companyId ?? this.companyId,
      ecommerceId: ecommerceId ?? this.ecommerceId,
      forceAuthenticationStart: forceAuthenticationStart ?? this.forceAuthenticationStart,
      disabledPrintScreen: disabledPrintScreen ?? this.disabledPrintScreen,
      planRequired: planRequired ?? this.planRequired,
      urlWebApplication: urlWebApplication ?? this.urlWebApplication,
      linkAppleStore: linkAppleStore ?? this.linkAppleStore,
      linkGooglePlay: linkGooglePlay ?? this.linkGooglePlay,
      redirectOrigin: redirectOrigin ?? this.redirectOrigin,
      link: link ?? this.link,
      environment: environment ?? this.environment,
      functionality: functionality ?? this.functionality,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyId': companyId,
      'ecommerceId': ecommerceId,
      'forceAuthenticationStart': forceAuthenticationStart,
      'disabledPrintScreen': disabledPrintScreen,
      'planRequired': planRequired,
      'urlWebApplication': urlWebApplication,
      'linkAppleStore': linkAppleStore,
      'linkGooglePlay': linkGooglePlay,
      'redirectOrigin': redirectOrigin,
      'link': link.toMap(),
      'environment': environment.toMap(),
      'functionality': functionality.toMap(),
    };
  }

  factory SettingWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return SettingWhiteLabelEntity(
      companyId: map['companyId'] ?? '',
      ecommerceId: map['ecommerceId'] ?? '',
      forceAuthenticationStart: map['forceAuthenticationStart'] ?? false,
      disabledPrintScreen: map['disabledPrintScreen'] ?? false,
      planRequired: map['planRequired'] ?? false,
      urlWebApplication: map['urlWebApplication'] ?? '',
      linkAppleStore: map['linkAppleStore'],
      linkGooglePlay: map['linkGooglePlay'],
      redirectOrigin: map['redirectOrigin'] ?? '',
      link: LinkWhiteLabelEntity.fromMap(map['link']),
      environment: EnvironmentWhiteLabelEntity.fromMap(map['environment']),
      functionality: FunctionalityWhiteLabelEntity.fromMap(map['functionality']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingWhiteLabelEntity.fromJson(String source) => SettingWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SettingWhiteLabelEntity(companyId: $companyId, ecommerceId: $ecommerceId, forceAuthenticationStart: $forceAuthenticationStart, disabledPrintScreen: $disabledPrintScreen, planRequired: $planRequired, urlWebApplication: $urlWebApplication, linkAppleStore: $linkAppleStore, linkGooglePlay: $linkGooglePlay, redirectOrigin: $redirectOrigin, link: $link, environment: $environment, functionality: $functionality)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SettingWhiteLabelEntity &&
      other.companyId == companyId &&
      other.ecommerceId == ecommerceId &&
      other.forceAuthenticationStart == forceAuthenticationStart &&
      other.disabledPrintScreen == disabledPrintScreen &&
      other.planRequired == planRequired &&
      other.urlWebApplication == urlWebApplication &&
      other.linkAppleStore == linkAppleStore &&
      other.linkGooglePlay == linkGooglePlay &&
      other.redirectOrigin == redirectOrigin &&
      other.link == link &&
      other.environment == environment &&
      other.functionality == functionality;
  }

  @override
  int get hashCode {
    return companyId.hashCode ^
      ecommerceId.hashCode ^
      forceAuthenticationStart.hashCode ^
      disabledPrintScreen.hashCode ^
      planRequired.hashCode ^
      urlWebApplication.hashCode ^
      linkAppleStore.hashCode ^
      linkGooglePlay.hashCode ^
      redirectOrigin.hashCode ^
      link.hashCode ^
      environment.hashCode ^
      functionality.hashCode;
  }
}
