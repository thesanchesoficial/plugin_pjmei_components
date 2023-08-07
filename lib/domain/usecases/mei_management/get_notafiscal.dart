import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetNotaFiscal {
  Future<List<NotaFiscalEntity>> exec({bool log = false});
}
