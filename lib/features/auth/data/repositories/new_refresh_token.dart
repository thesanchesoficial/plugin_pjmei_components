import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/refresh_token.dart';
import '../usecase/remote_refresh_token.dart';

RefreshToken makeRefreshToken() => RemoteRefreshToken(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/refresh-token'),
);
