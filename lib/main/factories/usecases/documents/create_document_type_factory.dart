import 'package:plugin_pjmei_components/data/usecases/documents/remote_create_document_type.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/create_document_type.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

CreateDocumentType makeRemoteCreateDocumentType() => RemoteCreateDocumentType(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/document/type-document')
);