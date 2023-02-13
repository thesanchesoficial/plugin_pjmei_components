import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components_platform_interface.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginPjmeiComponentsPlatform
    with MockPlatformInterfaceMixin
    implements PluginPjmeiComponentsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginPjmeiComponentsPlatform initialPlatform = PluginPjmeiComponentsPlatform.instance;

  test('$MethodChannelPluginPjmeiComponents is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginPjmeiComponents>());
  });

  test('getPlatformVersion', () async {
    PluginPjmeiComponents pluginPjmeiComponentsPlugin = PluginPjmeiComponents();
    MockPluginPjmeiComponentsPlatform fakePlatform = MockPluginPjmeiComponentsPlatform();
    PluginPjmeiComponentsPlatform.instance = fakePlatform;

    expect(await pluginPjmeiComponentsPlugin.getPlatformVersion(), '42');
  });
}
