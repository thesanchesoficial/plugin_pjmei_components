import '../../../features/app/domain/entities/environment.dart';
import '../../../utils/functions/print.dart';

String makeApiUrl(String router, {Map<String, dynamic>? params}) {
  String urlParams = '?api_key=${Environment.current?.apiKey}';

  params?.forEach((key, value) {
    urlParams = urlParams + '&$key=$value';
  });
  p('${Environment.current?.baseUrl}$router$urlParams');
  return ('${Environment.current?.baseUrl}$router$urlParams');
}
