import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_link.dart';
import '../usecase/remote_add_link.dart';

AddLink makeRemoteAddLink() => RemoteAddLink(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/link-company'),
);
