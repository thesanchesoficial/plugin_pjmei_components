import 'package:plugin_pjmei_components/data/usecases/documents/remote_update_document_filters.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/update_document_filters.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateDocumentFilters makeRemoteUpdateDocumentFilters(String filterid) => RemoteUpdateDocumentFilters(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/filter-type-document/$filterid')
);