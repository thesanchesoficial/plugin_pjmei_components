import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

final appSM = GetIt.I.get<AppSMStore>();
final cartSM = GetIt.I.get<CartSMStore>();
final companySM = GetIt.I.get<CompanySMStore>();
final ecommerceSM = GetIt.I.get<EcommerceSMStore>();
final moduleSM = GetIt.I.get<ModuleSMStore>();
final userSM = GetIt.I.get<UserSMStore>();

bool hidePrintApplication = true;
bool isWebApplication = true;
double webStartsWithWidth = 500;
int minimalVersion = 1;
String logoutRedirect = '/login';
String userProfile = '/user/home';
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Map<String, Widget Function(BuildContext)> routersApp = {};
final ValueNotifier<UserEntity?> checkUserNotifier = ValueNotifier(userSM.user);