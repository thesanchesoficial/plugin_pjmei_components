import 'dart:developer';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components_example/settings/settings.dart';

void main() => Main.local(
  whiteLabel: pjmeiDev,
  environment: EnvironmentType.development,
  listenUser: _updateUserListener,
  minimalVersionApp: 11,
  home: const HomeSettings(),
  logoutPathRedirect: '/home'
);

void _updateUserListener() {
  log("sdsd");
}