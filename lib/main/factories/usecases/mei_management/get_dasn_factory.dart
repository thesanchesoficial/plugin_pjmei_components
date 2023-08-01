import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_get_dasn.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/get_dasn.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetDasn makeRemoteGetDasn(String cnpj, String companyid) => RemoteGetDasn(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('consult/dasn/$cnpj?company_id=$companyid'));
