import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetCcmei makeRemoteGetCcmei(String cnpj) => RemoteGetCcmei(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('/consult/ccmei/$cnpj'),
    );
