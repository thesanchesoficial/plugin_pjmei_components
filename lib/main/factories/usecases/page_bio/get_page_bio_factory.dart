import 'package:plugin_pjmei_components/data/usecases/page_bio/remote_get_page_bio.dart';
import 'package:plugin_pjmei_components/domain/usecases/page_bio/get_page_bio.dart';

import '../../factories.dart';

GetPageBio makeRemoteGetPageBio(String id) => RemoteGetPageBio(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/bio/$id'),
    );
