import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateMeiBenefits makeRemoteUpdateMeiBenefits(String id) => RemoteUpdateMeiBenefits(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('consult/benefits-mei/$id'),
);
