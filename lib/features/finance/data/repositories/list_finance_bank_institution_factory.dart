import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_finance_bank_institution.dart';
import '../usecase/remote_list_finance_bank_institution.dart';

ListFinanceBankInstitution makeRemoteListFinanceBankInstitution() => RemoteListFinanceBankInstitution(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-institution'),
);