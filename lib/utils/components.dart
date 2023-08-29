library components;

import 'dart:developer';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GlobalKey<NavigatorState> navigatorGlobalKey = GlobalKey<NavigatorState>();
BotToastNavigatorObserver botToastNavigatorObserver = BotToastNavigatorObserver();

class Main {
  static Future local({
    required WhiteLabelEntity whiteLabel,
    required EnvironmentType environment,
    required Widget home,
    Function()? preload,
    void Function()? listenUser,
    required int minimalVersionApp,
    FirebaseOptions? firebaseOptions,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    try {
      final GetIt getIt = GetIt.I;
      getIt.registerSingleton<AppSMStore>(AppSMStore());
      getIt.registerSingleton<CartSMStore>(CartSMStore());
      getIt.registerSingleton<CompanySMStore>(CompanySMStore());
      getIt.registerSingleton<EcommerceSMStore>(EcommerceSMStore());
      getIt.registerSingleton<ModuleSMStore>(ModuleSMStore());
      getIt.registerSingleton<UserSMStore>(UserSMStore());
    } catch (e) {
      log('error initializing state management');
    }
    WhiteLabelEntity.current = whiteLabel;
    if(environment == EnvironmentType.development) {
      Environment.current = Development();
    } else {
      Environment.current = Production();
    }
    minimalVersion = minimalVersionApp;
    
    try {
      if (isFirstLoading) {
        usePathUrlStrategy();
        isFirstLoading = false;
      }
    } catch (e) {
      log('error removing hastag from url');
    }
    try {
      if(preload != null) {
        await preload();
      }
    } catch (e) {
      log('error starting preload');
    }
    try {
      if(listenUser != null) {
        checkUserNotifier.addListener(listenUser);
      }
    } catch (e) {
      log('error listening for user changes');
    }
    try {
      if(firebaseOptions != null) {
        await Firebase.initializeApp(options: firebaseOptions);
      }
    } catch (e) {
      log('error initializing firebase');
    }
    try {
      runApp(home);
    } catch (e) {
      log('error initializing system');
    }
  }
}

TransitionBuilder ComponentsInit({
  bool hidePrint = false,
  bool isWeb = false,
  double webWidth = 500,
  required Map<String, Widget Function(BuildContext)> routers,
}) {
  routersApp = routers;  
  hidePrintApplication = hidePrint;
  isWebApplication = isWeb;
  webStartsWithWidth = webWidth;
  return BotToastInit();
}
