import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_post_notafiscal.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

PostNotaFiscal makeRemotePostNotaFiscal() => RemotePostNotaFiscal(
      httpClient: makeHttpAdapter(),
      url: '${Environment.current!.baseUrl}venver/nota-fiscal' +
          Environment.current!.apiKeyUrl,
    );
