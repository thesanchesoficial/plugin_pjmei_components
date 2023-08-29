import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class CreateDocumentSubtype {
  Future<DocumentSubtypeEntity> exec(DocumentSubtypeEntity params, {bool log = false});
}