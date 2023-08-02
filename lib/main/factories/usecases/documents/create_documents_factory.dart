import 'package:plugin_pjmei_components/data/usecases/documents/remote_create_documents.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/create_documents.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

CreateDocuments makeRemoteCreateDocuments() => RemoteCreateDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document')
);