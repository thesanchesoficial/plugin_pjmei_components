import 'package:plugin_pjmei_components/data/usecases/documents/remote_create_document_filters.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/create_document_filters.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

CreateDocumentFilters makeRemoteCreateDocumentFilters() => RemoteCreateDocumentFilters(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/filter-type-document')
);