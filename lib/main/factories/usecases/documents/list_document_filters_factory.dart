import 'package:plugin_pjmei_components/data/usecases/documents/remote_get_document_filter.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/get_documentfilters.dart';

import '../../factories.dart';

GetDocumentFilters makeRemoteGetDocumentFilters() => RemoteGetDocumentFilters(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/document-subtype'),
    );
