import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_das_item.dart';
import '../usecase/remote_get_das_item.dart';

GetDasItem makeGeneratePdf() => RemoteGetDasItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/das/pdf')
);