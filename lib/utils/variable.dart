import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plugin_pjmei_components/ui/controllers/app/app_sm.dart';
import 'package:plugin_pjmei_components/ui/controllers/cart/cart_sm.dart';
import 'package:plugin_pjmei_components/ui/controllers/company/company_sm.dart';
import 'package:plugin_pjmei_components/ui/controllers/ecommerce/ecommerce_sm.dart';
import 'package:plugin_pjmei_components/ui/controllers/module/module_sm.dart';
import 'package:plugin_pjmei_components/ui/controllers/user/user_sm.dart';

bool hidePrintApplication = true;
bool isWebApplication = true;
double webStartsWithWidth = 500;
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Map<String, Widget Function(BuildContext)> routersApp = {};
ValueNotifier checkUserNotifier = ValueNotifier(userSM.user);

final appSM = GetIt.I.get<AppSMStore>();
final cartSM = GetIt.I.get<CartSMStore>();
final companySM = GetIt.I.get<CompanySMStore>();
final ecommerceSM = GetIt.I.get<EcommerceSMStore>();
final moduleSM = GetIt.I.get<ModuleSMStore>();
final userSM = GetIt.I.get<UserSMStore>();