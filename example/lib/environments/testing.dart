
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class Testing extends Environment {
  @override
  final String apiKeyUrlQuery = '&api_key=thlIuTaIRQW3go7RGfPtf3O2FrMFkOmTIzbaWxhi';
  @override
  final String appName = '${WhiteLabelApp.current?.appName} Testing';
  @override
  final String url = 'https://dev.venver.app/';
  @override
  final String baseUrl = 'https://apistg.pjmei.app/v1/';
  @override
  final String apiKey = 'thlIuTaIRQW3go7RGfPtf3O2FrMFkOmTIzbaWxhi';
  @override
  final String apiKeyUrl = '?api_key=thlIuTaIRQW3go7RGfPtf3O2FrMFkOmTIzbaWxhi';
  @override
  final int minimalVersion = 12;

  @override
  EnvironmentType environmentType = EnvironmentType.testing;

}
