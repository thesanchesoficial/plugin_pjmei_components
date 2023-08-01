import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_list_all_debtors.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/list_all_debtors.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListAllDebtors makeRemoteListAllDebtors(String cnpj) => RemoteListAllDebtors(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('consult/das/debtor/$cnpj/cnpj'),
    );
