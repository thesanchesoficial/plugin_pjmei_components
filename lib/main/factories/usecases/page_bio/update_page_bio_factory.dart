import 'package:plugin_pjmei_components/data/usecases/page_bio/remote_update_page_bio.dart';
import 'package:plugin_pjmei_components/domain/usecases/page_bio/update_page_bio.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdatePageBio makeRemoteUpdatePageBio(String id) => RemoteUpdatePageBio(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/bio/${companySM.company?.id}/$id'));
