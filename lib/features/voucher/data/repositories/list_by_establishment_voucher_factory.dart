import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_by_establishment_voucher.dart';
import '../usecase/remote_list_by_establishment_voucher.dart';

ListVouchersByEstablishment makeRemoteListVouchersByEstablishment(Map<String, dynamic> params) => RemoteListVouchersByEstablishment(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cupom/estabelecimento', params: params),
);