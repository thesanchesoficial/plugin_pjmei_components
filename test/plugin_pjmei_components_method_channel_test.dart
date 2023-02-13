import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components_method_channel.dart';

void main() {
  MethodChannelPluginPjmeiComponents platform = MethodChannelPluginPjmeiComponents();
  const MethodChannel channel = MethodChannel('plugin_pjmei_components');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
