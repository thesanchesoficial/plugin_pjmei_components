import 'package:plugin_pjmei_components/data/usecases/documents/remote_list_document_filters_by_type.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/list_document_filters.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListDocumentFilters makeRemoteListDocumentsFiltersByType(String type) => RemoteGetDocumentFiltersByType(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/finance/type-and-filter?type=$type')
);