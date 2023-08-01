import 'package:plugin_pjmei_components/data/usecases/documents/remote_get_document_type.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/get_documenttype.dart';
import '../../factories.dart';

GetDocumentType makeRemoteGetDocumentType() => RemoteGetDocumentType(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/document-type'),
    );
