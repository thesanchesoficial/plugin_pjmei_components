import 'package:plugin_pjmei_components/data/usecases/documents/remote_delete_documents.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/delete_documents.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteDocuments makeRemoteDeleteDocuments(String documentid) => RemoteDeleteDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/$documentid')
);