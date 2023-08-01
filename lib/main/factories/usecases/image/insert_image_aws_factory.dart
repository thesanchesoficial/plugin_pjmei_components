import 'package:plugin_pjmei_components/data/usecases/image/remote_insert_image_aws.dart';
import 'package:plugin_pjmei_components/domain/usecases/image/insert_image_aws.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

InsertImageAws makeRemoteAddImageAws() => RemoteInsertImageAws(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/imagem/s3/${companySM.company?.id}'));
