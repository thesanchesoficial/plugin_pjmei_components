import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class CreateDocumentType {
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params);
}