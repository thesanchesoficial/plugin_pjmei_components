import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListDocuments makeRemoteListDocuments({Map<String, dynamic>? params}) => RemoteListDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document', params: params)
);