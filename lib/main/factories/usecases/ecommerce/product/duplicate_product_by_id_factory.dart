import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DuplicateProductById makeRemoteDuplicateProductById(String id) =>
    RemoteDuplicateProductById(
        httpClient: makeHttpAdapter(), url: makeApiUrl('venver/produto/$id'));
