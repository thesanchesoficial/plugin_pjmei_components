
import 'package:plugin_pjmei_components/data/usecases/das/remote_get_das_item.dart';
import 'package:plugin_pjmei_components/domain/usecases/das/get_das_item.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetDasItem makeGeneratePdf() => RemoteGetDasItem(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/das')
);