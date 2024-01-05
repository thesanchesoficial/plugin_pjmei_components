import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_white_label.dart';
import '../usecase/find_white_label.dart';

FindWhiteLabel makeRemoteFindWhiteLabel(String id) => RemoteFindWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$id'),
);
