import 'package:plugin_pjmei_components/data/usecases/cards/remote_list_all_cards.dart';
import 'package:plugin_pjmei_components/domain/usecases/cards/list_all_cards.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListAllCards makeRemoteListAllCards(Map<String, dynamic> params) => RemoteListAllCards(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cards', params: params)
);