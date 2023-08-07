import 'package:plugin_pjmei_components/data/usecases/auth/remote_refresh_token.dart';
import 'package:plugin_pjmei_components/domain/usecases/auth/refresh_token.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

RefreshToken makeRefreshToken() => RemoteRefreshToken(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/refresh-token'),
);
