export './ui/ui.dart';
export './utils/utils.dart';
export 'package:go_router/go_router.dart';
export 'package:flutter_localizations/flutter_localizations.dart';
export 'package:dynamic_color/dynamic_color.dart';
export 'package:extended_masked_text/extended_masked_text.dart';
export 'package:eva_icons_flutter/eva_icons_flutter.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:flutter_tags/flutter_tags.dart';
export 'package:jwt_decoder/jwt_decoder.dart';
import 'plugin_pjmei_components_platform_interface.dart';

class PluginPjmeiComponents {
  Future<String?> getPlatformVersion() {
    return PluginPjmeiComponentsPlatform.instance.getPlatformVersion();
  }
}
