import 'package:plugin_pjmei_components/data/usecases/product/remote_duplicate_product_by_id.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DuplicateProductById makeRemoteDuplicateProductById(String id) =>
    RemoteDuplicateProductById(
        httpClient: makeHttpAdapter(), url: makeApiUrl('venver/produto/$id'));
