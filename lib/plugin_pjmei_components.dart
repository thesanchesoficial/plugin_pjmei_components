export './ui/ui.dart';
export './utils/utils.dart';
export 'package:go_router/go_router.dart';
export 'package:flutter_localizations/flutter_localizations.dart';
export 'package:dynamic_color/dynamic_color.dart';
import 'plugin_pjmei_components_platform_interface.dart';

class PluginPjmeiComponents {
  Future<String?> getPlatformVersion() {
    return PluginPjmeiComponentsPlatform.instance.getPlatformVersion();
  }
}
