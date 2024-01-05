import '../entity/document_subtype_entity.dart';

abstract class CreateDocumentSubtype {
  Future<DocumentSubtypeEntity> exec(DocumentSubtypeEntity params, {bool log = false});
}