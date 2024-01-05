import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_white_label.dart';
import '../usecase/update_white_label.dart';

UpdateWhiteLabel makeRemoteUpdateWhiteLabel(String id) => RemoteUpdateWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$id'),
);
