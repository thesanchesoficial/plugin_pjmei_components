import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetDasPdf makeRemoteGetDasPdf(String cnpj, {Map<String, dynamic>? params}) =>
    RemoteGetDasPdf(
        httpClient: makeHttpAdapter(),
        url: makeApiUrl('consult/das/pdf/$cnpj', params: params));
