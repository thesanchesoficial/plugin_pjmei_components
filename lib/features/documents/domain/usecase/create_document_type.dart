import '../entity/document_type_entity.dart';

abstract class CreateDocumentType {
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params, {bool log = false});
}