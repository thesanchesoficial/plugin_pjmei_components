import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetNotaFiscalService {
  Future<List<NotaFiscalServiceEntity>> exec({bool log = false});
}
