import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetMeiBenefits makeRemoteGetMeiBenefits(String id) => RemoteGetMeiBenefits(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('consult/benefits-mei/$id'),
);
