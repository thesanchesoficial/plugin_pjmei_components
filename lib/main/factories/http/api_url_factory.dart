import '../../../features/app/domain/entity/environment.dart';

String makeApiUrl(String router, {Map<String, dynamic>? params}) {
  String urlParams = '?api_key=${Environment.current?.apiKey}';

  params?.forEach((key, value) {
    urlParams = urlParams + '&$key=$value';
  });
  return ('${Environment.current?.baseUrl}$router$urlParams');
}
