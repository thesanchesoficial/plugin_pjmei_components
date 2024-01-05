import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_mei_benefits.dart';
import '../usecase/update_mei_benefits.dart';

UpdateMeiBenefits makeRemoteUpdateMeiBenefits() => RemoteUpdateMeiBenefits(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/benefits-mei'),
);
