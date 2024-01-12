import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class Development extends Environment {
  @override
  String get baseUrl => 'https://apistg.pjmei.app/v1/';
  @override
  String get apiKey => 'thlIuTaIRQW3go7RGfPtf3O2FrMFkOmTIzbaWxhi';
  @override
  String get apiKeyUrl => '?api_key=thlIuTaIRQW3go7RGfPtf3O2FrMFkOmTIzbaWxhi';
  @override
  String get apiKeyUrlQuery => '&api_key=thlIuTaIRQW3go7RGfPtf3O2FrMFkOmTIzbaWxhi';
  @override
  EnvironmentType get environmentType => EnvironmentType.development;
}
