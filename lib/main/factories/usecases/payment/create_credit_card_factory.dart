import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

CreateCreditCard makeRemoteCreateCreditCard() => RemoteCreateCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/credit-card'),
);
