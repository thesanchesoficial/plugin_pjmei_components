import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_white_label.dart';
import '../usecase/list_white_label.dart';

ListWhiteLabel makeRemoteListWhiteLabel() => RemoteListWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label'),
);
