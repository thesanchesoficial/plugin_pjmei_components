import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

PostDasnItem makePostDasn({Map<String, dynamic>? params}) => RemotePostDasnItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/dasn', params: params),
);