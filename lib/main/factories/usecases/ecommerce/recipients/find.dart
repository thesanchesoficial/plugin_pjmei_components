import 'package:plugin_pjmei_components/data/usecases/recipient/remote_get_recipient.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';

import '../../../factories.dart';

GetRecipient makeRemoteGetRecipient(String id) => RemoteGetRecipient(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id/recipient'),
);
