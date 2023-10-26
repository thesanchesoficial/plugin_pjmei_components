import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/put_ccmei.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

PutCcmei makePutCcmei({Map<String, dynamic>? params}) => RemotePutCcmei(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/mei', params: params),
);