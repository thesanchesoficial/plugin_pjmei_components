import 'package:plugin_pjmei_components/data/usecases/documents/remote_get_document.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/get_documents.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import '../../factories.dart';

GetDocuments makeRemoteGetDocumentByType(String type) => RemoteGetDocument(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/document/cnpj/${companySM.company?.cnpj}'),
    );
