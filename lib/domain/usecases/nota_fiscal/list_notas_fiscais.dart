import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListNotasFiscais {
  Future<List<NotaFiscalEntity>> exec({bool log = false});
}