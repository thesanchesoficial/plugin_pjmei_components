import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/create_credit_card.dart';
import '../usecase/create_credit_card.dart';

CreateCreditCard makeRemoteCreateCreditCard() => RemoteCreateCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/credit-card'),
);
