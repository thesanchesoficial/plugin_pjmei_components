import 'package:plugin_pjmei_components/data/usecases/online_store/remote_add_online_store.dart';
import 'package:plugin_pjmei_components/domain/usecases/online_store/add_online_store.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddOnlineStore makeRemoteDuplicateProductById() => RemoteAddOnlineStore(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/estabelecimento'));
