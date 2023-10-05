import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateAddress makeRemoteUpdateAddress(String id) => RemoteUpdateAddress(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address/$id'),
);