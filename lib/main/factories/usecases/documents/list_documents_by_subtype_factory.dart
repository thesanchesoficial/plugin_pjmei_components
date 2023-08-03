import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetDocuments makeRemoteGetDocumentBySubtype(String subtype) =>
    RemoteGetDocument(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/document/cnpj/${companySM.company?.cnpj}'),
    );
