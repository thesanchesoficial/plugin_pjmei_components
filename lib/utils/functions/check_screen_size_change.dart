import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

checkScreenSizeChange(BuildContext context) {
  if (MediaQuery.sizeOf(context).width > 600) {
    if (!appSM.isWeb) {
      appSM.setIsWeb(true);
    }
  } else {
    if (appSM.isWeb) {
      appSM.setIsWeb(false);
    }
  }
}