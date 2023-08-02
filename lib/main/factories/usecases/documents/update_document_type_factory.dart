import 'package:plugin_pjmei_components/data/usecases/documents/remote_update_document_type.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/update_document_type.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateDocumentType makeRemoteUpdateDocumentType(String typeid) => RemoteUpdateDocumentType(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/type-document/$typeid')
);