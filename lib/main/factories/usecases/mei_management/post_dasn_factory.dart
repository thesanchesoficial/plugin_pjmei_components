import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_post_dasn.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/post_dasn.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

PostDasn makeRemotePostDasn(String cnpj, {Map<String, dynamic>? params}) =>
    RemotePostDasn(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('consult/dasn/$cnpj', params: params),
    );
