import 'package:plugin_pjmei_components/data/usecases/page_bio/remote_add_page_bio.dart';
import 'package:plugin_pjmei_components/domain/usecases/page_bio/add_page_bio.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddPageBio makeRemoteAddPageBio() => RemoteAddPageBio(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/bio/${companySM.company?.id}'));
