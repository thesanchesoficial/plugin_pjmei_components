import 'package:plugin_pjmei_components/data/usecases/cards/remote_add_card_venver.dart';
import 'package:plugin_pjmei_components/domain/usecases/cards/add_category_extras_services.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddCardVenver makeRemoteAddCardVenver() => RemoteAddCardVenver(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cards')
);