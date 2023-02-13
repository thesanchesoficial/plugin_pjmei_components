import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_pjmei_components_method_channel.dart';

abstract class PluginPjmeiComponentsPlatform extends PlatformInterface {
  /// Constructs a PluginPjmeiComponentsPlatform.
  PluginPjmeiComponentsPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginPjmeiComponentsPlatform _instance = MethodChannelPluginPjmeiComponents();

  /// The default instance of [PluginPjmeiComponentsPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginPjmeiComponents].
  static PluginPjmeiComponentsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginPjmeiComponentsPlatform] when
  /// they register themselves.
  static set instance(PluginPjmeiComponentsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
