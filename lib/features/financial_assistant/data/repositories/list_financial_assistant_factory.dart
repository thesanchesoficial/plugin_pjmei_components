import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../usecase/remote_list_financial_assistant.dart';
import '../../domain/usecase/list_financial_assistant.dart';

ListFinancialAssistant makeRemoteListFinancialAssistant(String id) => RemoteListFinancialAssistant(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/financial-assistant/company/$id'),
);
