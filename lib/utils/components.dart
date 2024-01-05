library components;

import 'dart:developer';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../features/app/controller/app_sm.dart';
import '../features/app/domain/entities/environment.dart';
import '../features/cart/controller/cart_sm.dart';
import '../features/company/controller/company_sm.dart';
import '../features/ecommerce/controller/ecommerce_sm.dart';
import '../features/modules/controller/module_sm.dart';
import '../features/user/controller/user_sm.dart';
import '../features/white_label/domain/entity/white_label_entity.dart';
import '../src/apis.dart';

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
    required String logoutPathRedirect,
    required String pathProfileUser,
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
    appSM.setWhiteLabel(whiteLabel);
    
    if(environment == EnvironmentType.development) {
      Environment.current = Development();
    } else {
      Environment.current = Production();
    }

    minimalVersion = minimalVersionApp;
    logoutRedirect = logoutPathRedirect;
    userProfile = pathProfileUser;
    
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

  static Future online({
    required String whiteLabel,
    required EnvironmentType environment,
    required Widget home,
    Function()? preload,
    void Function()? listenUser,
    required int minimalVersionApp,
    FirebaseOptions? firebaseOptions,
    required String logoutPathRedirect,
    required String pathProfileUser,
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
    
    WhiteLabelEntity.current = pjmeiDev;

    try {
      WhiteLabelEntity temp = await Api.whiteLabel.find(id: whiteLabel);
      WhiteLabelEntity.current = temp;
      appSM.setWhiteLabel(temp);
    } catch (e) {
      log('error initializing white label');
    }
    
    if(environment == EnvironmentType.development) {
      Environment.current = Development();
    } else {
      Environment.current = Production();
    }

    minimalVersion = minimalVersionApp;
    logoutRedirect = logoutPathRedirect;
    userProfile = pathProfileUser;
    
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
