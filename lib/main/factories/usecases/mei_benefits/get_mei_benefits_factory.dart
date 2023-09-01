import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetMeiBenefits makeRemoteGetMeiBenefits() => RemoteGetMeiBenefits(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/benefits-mei'),
);
