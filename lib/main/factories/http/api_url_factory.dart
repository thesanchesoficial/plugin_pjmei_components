import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

String makeApiUrl(String router, {Map<String, dynamic>? params}) {
  String urlParams = '?api_key=${Environment.current?.apiKey}&version_app=$minimalVersion&appName=${WhiteLabelEntity.current?.name}';

  params?.forEach((key, value) {
    urlParams = urlParams + '&$key=$value';
  });
  p('${Environment.current?.baseUrl}$router$urlParams');
  return ('${Environment.current?.baseUrl}$router$urlParams');
}
