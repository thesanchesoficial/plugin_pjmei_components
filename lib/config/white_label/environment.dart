import 'package:flutter/material.dart';

import 'package:plugin_pjmei_components/domain/entities/pjmei_module_entity.dart';
import 'package:plugin_pjmei_components/ui/components/item_modal_widget.dart';

enum AppType { VENVER, PJMEI, CIAMPE_SERRA, SICOOB, CIAMPE_CACHOEIRO }

class WhiteLabelApp {

  WhiteLabelApp({
    required this.appName,
    required this.descriptionName,
    required this.descriptionAboutApp,
    required this.urlSite,
    required this.logoMenuWeb,
    required this.logoMenuMobile,
    required this.logoSplash,
    this.production,
    this.sandbox,
    required this.settings,
    this.lightColorScheme,
    this.darkColorScheme,
    required this.appType,
    required this.strings,
    required this.features,
    required this.acceptIndividual,
    required this.acceptCompany,
    required this.individualAccountLimit,
    required this.companyAccountLimit,
  }) {
    current = this;
  }
  static WhiteLabelApp? current;

  final String appName;
  final String descriptionName;
  final String descriptionAboutApp;
  final String urlSite;
  final String logoMenuWeb;
  final String logoMenuMobile;
  final String logoSplash;
  final EnvironmentSettings? production;
  final EnvironmentSettings? sandbox;
  final WhiteLabelSettings settings;
  final ColorScheme? lightColorScheme;
  final ColorScheme? darkColorScheme;
  final AppType appType;
  final Map<String, String> strings;
  final List<ModulePjmei> features;
  final bool acceptIndividual;
  final bool acceptCompany;
  final int individualAccountLimit;
  final int companyAccountLimit;
}

class EnvironmentSettings {
  final String establishmentId;
  final String companyId;
  final String idSupport;
  EnvironmentSettings({
    required this.establishmentId,
    required this.companyId,
    required this.idSupport,
  });
}

class WhiteLabelSettings {

  WhiteLabelSettings({
    required this.appName,
    required this.initialLocation,
    required this.screens,
    required this.chatBot,
    this.optionsModalUser = const [],
    this.optionsModalBusiness = const [],
  });
  final String appName;
  final String initialLocation;
  final WhiteLabelScreensRoute screens;
  final ChatBotOptionsWhiteLabel chatBot;
  final List<ItemModalWidget> optionsModalUser;
  final List<ItemModalWidget> optionsModalBusiness;
}

class WhiteLabelScreensRoute {

  WhiteLabelScreensRoute({
    required this.addBusiness,
    required this.openBusiness,
  });
  final String addBusiness;
  final String openBusiness;
}

class ChatBotOptionsWhiteLabel {

  ChatBotOptionsWhiteLabel({
    this.title,
    this.value,
    this.route,
    this.options,
  });
  final String? title;
  String? value;
  final String? route;
  final List<ChatBotOptionsWhiteLabel>? options;

  ChatBotOptionsWhiteLabel copyWith({
    String? title,
    String? value,
    String? route,
    List<ChatBotOptionsWhiteLabel>? options,
  }) {
    return ChatBotOptionsWhiteLabel(
      title: title ?? this.title,
      value: value ?? this.value,
      route: route ?? this.route,
      options: options ?? this.options,
    );
  }
}
