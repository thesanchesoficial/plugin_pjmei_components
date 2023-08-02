import 'package:plugin_pjmei_components/data/usecases/cards/remote_update_category_extras_services.dart';
import 'package:plugin_pjmei_components/domain/usecases/cards/update_category_extras_services.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateCardVenver makeRemoteUpdateCardVenver(String id) => RemoteUpdateCardVenver(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cards/$id')
);