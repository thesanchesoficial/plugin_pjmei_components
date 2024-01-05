import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_mei_benefits.dart';
import '../usecase/get_mei_benefits.dart';

GetMeiBenefits makeRemoteGetMeiBenefits() => RemoteGetMeiBenefits(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/benefits-mei'),
);
