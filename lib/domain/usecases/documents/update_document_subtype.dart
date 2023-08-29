import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateDocumentSubtype {
  Future<DocumentSubtypeEntity> exec(DocumentTypeEntity params, {bool log = false});
}