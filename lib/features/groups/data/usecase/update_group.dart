import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/group_entity.dart';
import '../../domain/usecase/update_group.dart';

class RemoteUpdateGroup implements UpdateGroup {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateGroup({required this.httpClient, required this.url});

  @override
  Future<GroupEntity> exec(GroupEntity item, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: item.toMap(),
      );
      return GroupEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
