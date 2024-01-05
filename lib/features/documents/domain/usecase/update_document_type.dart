import '../entity/document_type_entity.dart';

abstract class UpdateDocumentType {
  Future<DocumentTypeEntity> exec(DocumentTypeEntity params, {bool log = false});
}