import '../entity/document_subtype_entity.dart';
import '../entity/document_type_entity.dart';

abstract class UpdateDocumentSubtype {
  Future<DocumentSubtypeEntity> exec(DocumentTypeEntity params, {bool log = false});
}