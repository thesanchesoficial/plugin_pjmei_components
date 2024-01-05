import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_recipient.dart';
import '../usecase/remote_get_recipient.dart';

GetRecipient makeRemoteGetRecipient(String id) => RemoteGetRecipient(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id/recipient'),
);
