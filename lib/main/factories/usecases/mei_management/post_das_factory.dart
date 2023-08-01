import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_post_das.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/post_das.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

PostDas makeRemotePostDas(String cnpj, {Map<String, dynamic>? params}) {
  return RemotePostDas(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('consult/das/years/$cnpj'),
  );
}
