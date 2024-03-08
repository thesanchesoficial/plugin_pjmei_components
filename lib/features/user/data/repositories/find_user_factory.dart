import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/find_user.dart';
import '../usecase/find_user.dart';

FindUser makeRemoteFindUser(String id) => RemoteFindUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user/$id')
);