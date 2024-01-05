import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../src/variables.dart';
import '../../domain/usecase/insert_image_aws.dart';
import '../usecase/remote_insert_image_aws.dart';

InsertImageAws makeRemoteAddImageAws() => RemoteInsertImageAws(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/imagem/s3/${companySM.company?.id}'),
);
