import 'package:plugin_pjmei_components/data/usecases/financial_assistant/remote_list_financial_assistant.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_assistant/list_financial_assistant.dart';

import '../../factories.dart';

ListFinancialAssistant makeRemoteListFinancialAssistant(String id) =>
    RemoteListFinancialAssistant(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/financial-assistant/$id/company'),
    );
