import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetLimiteMei makeRemoteGetLimiteMei(/* String companyId */) =>
    RemoteGetLimiteMei(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl(
          '/venver/financeIncomeYear/da31377b-5529-44ba-8bbb-9b043ceb6ec2?year=2022'),
    );
