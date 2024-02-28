import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/company_entity.dart';
import '../../domain/entity/list_company_result.dart';
import '../../domain/usecase/list_business.dart';

class RemoteListBusiness implements ListBusines {
  final HttpClient httpClient;
  final String url;

  RemoteListBusiness({required this.httpClient, required this.url});

  @override
  Future<ListCompanyResult> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ListCompanyResult(
          count: int.tryParse((httpResponse["success"]?["count"] ?? 0).toString()) ?? 0,
          company: (httpResponse["success"]["items"] as List)
              .map((e) => CompanyEntity.fromMap(e))
              .toList());
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}