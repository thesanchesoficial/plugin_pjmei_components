import 'package:plugin_pjmei_components/test/data/http/http.dart';
import '../../decorators/decorators.dart';
import '../../factories/factories.dart';

HttpClient makeAuthorizeHttpClientDecorator() => AuthorizeHttpClientDecorator(
  decoratee: makeHttpAdapter(),
  fetchSecureCacheStorage: makeSecureStorageAdapter(),
  deleteSecureCacheStorage: makeSecureStorageAdapter(),
);