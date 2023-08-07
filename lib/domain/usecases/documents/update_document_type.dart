import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateDocumentType {
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params, {bool log = false});
}