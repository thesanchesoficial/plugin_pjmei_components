import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_pjmei_components_platform_interface.dart';

/// An implementation of [PluginPjmeiComponentsPlatform] that uses method channels.
class MethodChannelPluginPjmeiComponents extends PluginPjmeiComponentsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_pjmei_components');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
