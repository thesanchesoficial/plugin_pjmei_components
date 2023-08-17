import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

String makeApiUrl(String router, {Map<String, dynamic>? params}) {
  String urlParams = '?api_key=${Environment.current?.apiKey}&app_name=${WhiteLabelApp.current?.settings.appName}&appName=${WhiteLabelApp.current?.settings.appName}&version_app=${Environment.current?.minimalVersion}';

  params?.forEach((key, value) {
    urlParams = urlParams + '&$key=$value';
  });
  p('${Environment.current?.baseUrl}$router$urlParams');
  return ('${Environment.current?.baseUrl}$router$urlParams');
}
