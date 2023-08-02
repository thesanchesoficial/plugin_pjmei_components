import 'package:plugin_pjmei_components/data/usecases/documents/remote_list_documents_by_filter.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/list_documents.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListDocuments makeRemoteListDocumentsByFilters(String filterId) => RemoteListDocumentsByFilter(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/filter/$filterId')
);