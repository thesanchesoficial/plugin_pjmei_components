import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

InsertImageAws makeRemoteAddImageAws() => RemoteInsertImageAws(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/imagem/s3/${companySM.company?.id}'),
);
