import 'package:plugin_pjmei_components/data/usecases/documents/remote_delete_documets_type.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/delete_document_type.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteDocumentType makeRemoteDeleteDocumentType(String id) => RemoteDeleteDocumentType(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/type-document/$id')
);