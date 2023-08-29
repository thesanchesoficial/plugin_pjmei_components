import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListDocumentSubtype {
  Future<List<DocumentSubtypeEntity>> exec({bool log = false});
}
