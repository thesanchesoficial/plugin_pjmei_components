library components;
import 'dart:developer';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GlobalKey<NavigatorState> navigatorGlobalKey = GlobalKey<NavigatorState>();
BotToastNavigatorObserver botToastNavigatorObserver = BotToastNavigatorObserver();

StateManagementInit() {
  try {
    final GetIt getIt = GetIt.I;
    getIt.registerSingleton<AppSMStore>(AppSMStore());
    getIt.registerSingleton<CartSMStore>(CartSMStore());
    getIt.registerSingleton<CompanySMStore>(CompanySMStore());
    getIt.registerSingleton<EcommerceSMStore>(EcommerceSMStore());
    getIt.registerSingleton<ModuleSMStore>(ModuleSMStore());
    getIt.registerSingleton<UserSMStore>(UserSMStore());
  } catch (e) {
    log(e.toString());
  }
}

// ignore: non_constant_identifier_names
TransitionBuilder ComponentsInit({
  bool hidePrint = false,
  bool isWeb = false,
  double webWidth = 500,
  required Environment environment,
  required WhiteLabelApp whiteLabelApp,
}) {
  WhiteLabelApp.current = whiteLabelApp;
  Environment.current = environment;
  
  hidePrintApplication = hidePrint;
  isWebApplication = isWeb;
  webStartsWithWidth = webWidth;
  return BotToastInit();
}
