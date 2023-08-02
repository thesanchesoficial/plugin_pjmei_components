import 'package:plugin_pjmei_components/data/usecases/documents/remote_update_documents.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/update_documents.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateDocuments makeRemoteUpdateDocuments(String documentid) => RemoteUpdateDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/$documentid')
);