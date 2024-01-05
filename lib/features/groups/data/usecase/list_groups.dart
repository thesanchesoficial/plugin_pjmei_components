import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/group_entity.dart';
import '../../domain/usecase/list_groups.dart';

class RemoteListGroups implements ListGroups {
  final HttpClient httpClient;
  final String url;

  RemoteListGroups({required this.httpClient, required this.url});

  @override
  Future<List<GroupEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"] as List)
          .map((e) => GroupEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
