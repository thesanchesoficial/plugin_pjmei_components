import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_white_label.dart';
import '../usecase/add_white_label.dart';

AddWhiteLabel makeRemoteAddWhiteLabel() => RemoteAddWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label'),
);
