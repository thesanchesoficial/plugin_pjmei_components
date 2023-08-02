import 'package:plugin_pjmei_components/data/usecases/documents/remote_delete_documents_filters.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/delete_document_filters.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteDocumentFilters makeRemoteDeleteDocumentFilters(String id) => RemoteDeleteDocumentFilters(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/filter-type-document/$id')
);