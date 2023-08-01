import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/entities/basic_dashboard_entity.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/agendamento/get_agendamento.dart';

class RemoteGetAgendamento implements GetAgendamento {
  RemoteGetAgendamento({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<BasicDashboardEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return BasicDashboardEntity.fromMap((httpResponse['success']));
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
